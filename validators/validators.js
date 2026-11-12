const { param, body } = require("express-validator");
const db = require("../db/queries");

const validateJoinTheClub = [
  body("secret")
    .trim()
    .notEmpty()
    .withMessage("Secret is required.")
    .isAlpha()
    .withMessage("Only letters are needed. No spaces.")
    .isLength({ max: 500 })
    .withMessage("Hint: it is shorter than 500 characters.")
    .custom((secret) => {
      return secret === process.env.MEMBERSHIP_SECRET;
    })
    .withMessage("Incorrect, try again..."),
];

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

const validateBecomeAdmin = [
  body("secret")
    .trim()
    .notEmpty()
    .withMessage("Secret is required.")
    .isAlpha()
    .withMessage("Only letters are needed. No spaces.")
    .isLength({ max: 500 })
    .withMessage("Hint: it is shorter than 500 characters.")
    .custom((secret) => {
      return secret === process.env.ADMIN_SECRET;
    })
    .withMessage("Incorrect, try again..."),
];

module.exports = {
  validateJoinTheClub,
  validateSignUp,
  validateBecomeAdmin,
};
