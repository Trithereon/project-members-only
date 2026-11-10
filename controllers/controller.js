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
      title: "Gods of Ancient Times",
      pantheons: await db.getPantheons(),
    });
  } catch (err) {
    next(err);
  }
};

