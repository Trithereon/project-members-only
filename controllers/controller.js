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
  // TODO: Add validation
  try {
    await db.signUp(req.body);
  } catch (err) {
    next(err);
  }
  return res.redirect("/");
};

exports.messageDelete = async (req, res, next) => {
  // TODO: Add validation and confirmation alert.
  try {
    await db.deleteMessage(req.params.id);
  } catch (err) {
    next(err);
  }
  return res.redirect("/");
};
