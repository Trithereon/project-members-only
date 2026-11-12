const { Router } = require("express");
const router = Router();
const controller = require("../controllers/controller");

// GET
router.get("/", controller.indexGet);
router.get("/join-the-club", controller.joinTheClubGet);
router.get("/logout", controller.logoutGet);
router.get("/become-admin", controller.becomeAdminGet);
router.get("/create-message", controller.createMessageGet);

// POST
router.post("/sign-up", controller.signUpPost, controller.loginPost);
router.post("/join-the-club", controller.joinTheClubPost);
router.post("/login", controller.loginPost);
router.post("/become-admin", controller.becomeAdminPost);
router.post("/create-message", controller.createMessagePost);

// DELETE
router.delete("/delete/message/:id", controller.messageDelete);

router.all("{*splat}", (req, res) => {
  console.log("404 triggered by:", req.method, req.originalUrl);
  res.status(404).render("404");
});

module.exports = router;
