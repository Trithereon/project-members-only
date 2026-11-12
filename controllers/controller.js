const db = require("../db/queries");
const bcrypt = require("bcryptjs");
const { validationResult, matchedData } = require("express-validator");
const {
  validateJoinTheClub,
  validateSignUp,
  validateBecomeAdmin,
} = require("../validators/validators");
const { ensureAuthenticated, ensureAdmin } = require("../validators/auth");
const passport = require("passport");

exports.indexGet = async (req, res, next) => {
  // Uses req.session to save/access state
  const signUpForm = req.session.signUpForm || {};
  // Delete, to avoid stale data lingering
  delete req.session.signUpForm;

  return res.render("index", {
    title: "Members Only",
    messages: await db.getMessages(),
    errors: signUpForm.errors || [],
    visibleForm: signUpForm.visibleForm || null,
    data: signUpForm.data || {},
  });
};

exports.joinTheClubGet = async (req, res, next) => {
  const attempt = req.session.attempt || {};
  delete req.session.attempt;

  return res.render("joinTheClub", {
    title: "Join the club",
    errors: attempt.errors || [],
  });
};

exports.joinTheClubPost = [
  ensureAuthenticated,
  validateJoinTheClub,
  async (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      console.log("Invalid input body: ", req.method, req.originalUrl);
      // Use req.session to save/access state
      req.session.attempt = {
        errors: errors.array(),
      };
      return res.redirect("/join-the-club");
    }

    await db.promoteToMember(req.user.id);
    res.redirect("/");
  },
];

exports.signUpPost = [
  validateSignUp,
  async (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      console.log("Invalid input body: ", req.method, req.originalUrl);
      // Strip password from req.body
      const { firstname, lastname, username } = req.body;
      // Use req.session to save/access state
      req.session.signUpForm = {
        errors: errors.array(),
        visibleForm: "signUp",
        data: { firstname, lastname, username },
      };
      return res.redirect("/");
    }

    // Hash password and assemble fully processed credentials.
    const { firstname, lastname, username, password } = matchedData(req);
    const hashedPassword = await bcrypt.hash(password, 10);
    const credentials = { firstname, lastname, username, hashedPassword };

    // Add new user to database and return that user.
    const user = await db.signUp(credentials);

    // Automatically log in after sign up.
    req.login(user, (err) => {
      if (err) {
        return next(err);
      }
      return res.redirect("/");
    });
  },
];

exports.loginPost = passport.authenticate("local", {
  successRedirect: "/",
  failureRedirect: "/",
  failureMessage: true,
});

exports.logoutGet = [
  ensureAuthenticated,
  (req, res, next) => {
    req.logout((err) => {
      if (err) {
        return next(err);
      }
      res.redirect("/");
    });
  },
];

exports.messageDelete = [
  ensureAdmin,
  async (req, res, next) => {
    await db.deleteMessage(req.params.id);
    res.redirect("/");
  },
];

exports.becomeAdminPost = [
  ensureAuthenticated,
  validateBecomeAdmin,
  async (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      console.log("Invalid input body: ", req.method, req.originalUrl);
      // Use req.session to save/access state
      req.session.attempt = {
        errors: errors.array(),
      };
      return res.redirect("/become-admin");
    }

    await db.promoteToAdmin(req.user.id);

    return res.redirect("/");
  },
];

exports.becomeAdminGet = async (req, res, next) => {
  // Uses req.session to save/access state
  const attempt = req.session.attempt || {};
  // Delete, to avoid stale data lingering
  delete req.session.attempt;

  return res.render("becomeAdmin", {
    title: "Become an admin",
    errors: attempt.errors || [],
  });
};
