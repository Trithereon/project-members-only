const db = require("../db/queries");
const {
  param,
  body,
  validationResult,
  matchedData,
} = require("express-validator");

exports.indexGet = async (req, res, next) => {
  try {
    return res.render("index", {
      title: "Members Only",
      messages: await db.getMessages(),
    });
  } catch (err) {
    next(err);
  }
};

exports.signUpPost = async (req, res, next) => {
  try {
    await db.signUp(req.body);
    return res.redirect("/");
  } catch (err) {
    next(err);
  }
};
