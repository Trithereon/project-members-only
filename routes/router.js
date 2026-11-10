const { Router } = require("express");
const router = Router();
const controller = require("../controllers/controller");

// GET
router.get("/", controller.indexGet);

// POST
router.post("/pantheon/create", controller.pantheonPost);

// DELETE
router.delete("/god/delete/:id", controller.godDelete);

// PUT
router.put("/pantheon/edit/:id", controller.pantheonPut);

router.all("{*splat}", (req, res) => {
  console.log("404 triggered by:", req.method, req.originalUrl);
  res.status(404).render("404");
});

module.exports = router;
