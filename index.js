const express = require("express");
const app = express();
const path = require("node:path");
const router = require("./routes/router");
const methodOverride = require("method-override");
const session = require("express-session");
const passport = require("passport");
const LocalStrategy = require("passport-local").Strategy;

const PORT = process.env.PORT;
const HOST = process.env.HOST;

app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(
  session({
    secret: process.env.SESSION_SECRET,
    resave: false,
    saveUninitialized: false,
  }),
);
app.use(passport.session());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(methodOverride("_method")); // To make delete btn DELETE instead of POST

const publicPath = path.join(__dirname, "public");
app.use(express.static(publicPath));
app.use("/", router);
// This makes currentUser available to the entire app.
app.use((req, res, next) => {
  res.locals.currentUser = req.user;
  next();
});

app.listen(PORT, (error) => {
  console.log(`Listening on http://${HOST}:${PORT}`);
  if (error) {
    throw error;
  }
});

app.use((err, req, res, next) => {
  console.error(err);
  res.status(err.statusCode || 500).send(err.message);
});
