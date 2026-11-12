const { Router } = require("express");
const router = Router();
const controller = require("../controllers/controller");

// GET
router.get("/", controller.indexGet);
router.get("/join-the-club", controller.joinTheClubGet);

// POST
router.post("/sign-up", controller.signUpPost);
router.post("/join-the-club", controller.joinTheClubPost);

// DELETE
router.delete("/delete/message/:id", controller.messageDelete);

// PUT
router.put("/user/edit/:id", () => {});

router.all("{*splat}", (req, res) => {
  console.log("404 triggered by:", req.method, req.originalUrl);
  res.status(404).render("404");
});

module.exports = router;
