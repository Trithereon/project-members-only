const { Router } = require("express");
const router = Router();
const controller = require("../controllers/controller");

// GET
router.get("/", controller.indexGet);
router.get("/pantheon/:id/:name", controller.pantheonGet);
router.get("/god/:id/:name", controller.godGet);
router.get("/domain/:id/:name", controller.domainGet);
router.get("/symbol/:id/:name", controller.symbolGet);
router.get("/domains", controller.domainsGet);
router.get("/symbols", controller.symbolsGet);

// POST
router.post("/pantheon/create", controller.pantheonPost);
router.post("/god/create", controller.godPost);
router.post("/domain/create", controller.domainPost);
router.post("/symbol/create", controller.symbolPost);

// DELETE
router.delete("/god/delete/:id", controller.godDelete);
router.delete("/pantheon/delete/:id", controller.pantheonDelete);
router.delete("/domain/delete/:id", controller.domainDelete);
router.delete("/symbol/delete/:id", controller.symbolDelete);

// PUT
router.put("/pantheon/edit/:id", controller.pantheonPut);
router.put("/god/edit/:id", controller.godPut);
router.put("/domain/edit/:id", controller.domainPut);
router.put("/symbol/edit/:id", controller.symbolPut);

router.all("{*splat}", (req, res) => {
  console.log("404 triggered by:", req.method, req.originalUrl);
  res.status(404).render("404");
});

module.exports = router;
