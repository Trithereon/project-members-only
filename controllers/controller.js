const db = require("../db/queries");
const bcrypt = require("bcryptjs");
const {
  param,
  body,
  validationResult,
  matchedData,
} = require("express-validator");

exports.indexGet = async (req, res, next) => {
  // Uses req.session to save/access state
  const signUpForm = req.session.signUpForm || {};
  // Delete, to avoid stale data lingering
  delete req.session.signUpForm;

  return res.render("index", {
    title: "Members Only",
    messages: await db.getMessages(),
    errors: signUpForm.errors || false,
    visibleForm: signUpForm.visibleForm || false,
    data: signUpForm.data || {},
  });
};

const validateSignUp = [
  body("firstname")
    .trim()
    .notEmpty()
    .withMessage("First name is required.")
    .isAlpha("en-US", ["-", "'"])
    .withMessage("First name only accepts letters and dashes.")
    .isLength({ min: 1, max: 100 })
    .withMessage("First name length must be between 1 and 100 characters."),
  body("lastname")
    .trim()
    .notEmpty()
    .withMessage("Last name is required.")
    .isAlpha("en-US", ["-", "'"])
    .withMessage("Last name only accepts letters and dashes.")
    .isLength({ min: 1, max: 100 })
    .withMessage("Last name length must be between 1 and 100 characters."),
  body("username")
    .trim()
    .notEmpty()
    .withMessage("Username is required.")
    .toLowerCase()
    .isAlphanumeric("en-US", ["-"])
    .withMessage("Username only accepts letters, numbers and dashes.")
    .isLength({ min: 3, max: 30 })
    .withMessage("Username length must be between 3 and 30 characters.")
    .bail()
    .custom(async (username) => {
      const isTaken = await db.isUsernameTaken(username);
      if (isTaken) {
        throw new Error("Username is already taken. Please try another.");
      }
    }),
  body("password")
    .notEmpty()
    .withMessage("Password is required")
    .isStrongPassword({
      minLength: 8,
      minLowercase: 1,
      minUppercase: 1,
      minNumbers: 1,
      minSymbols: 1,
    })
    .withMessage(
      "Password must be at least 8 characters long and include an uppercase letter, a lowercase letter, a number, and a symbol.",
    ),
  body("confirmPassword")
    .notEmpty()
    .withMessage(
      "Password confirmation is required. Please re-type your password in both fields.",
    )
    .custom((confirmPassword, { req }) => {
      const { password } = req.body;
      return confirmPassword === password;
    })
    .withMessage("Passwords must match."),
];

exports.signUpPost = [
  validateSignUp,
  async (req, res, next) => {
    console.log(validationResult(req).array());
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      console.log(
        "400 triggered by invalid input body: ",
        req.method,
        req.originalUrl,
      );
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

    const { firstname, lastname, username, password } = matchedData(req);
    const hashedPassword = await bcrypt.hash(password, 10);
    const credentials = { firstname, lastname, username, hashedPassword };
    await db.signUp(credentials);
    res.redirect("/");
  },
];

exports.messageDelete = async (req, res, next) => {
  // TODO: Add validation and confirmation alert.
  await db.deleteMessage(req.params.id);
  res.redirect("/");
};
