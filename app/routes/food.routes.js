const { authJwt } = require("../middleware/index.js");
const foods = require("../controllers/food.controller.js");
const path = require('path');

const base_path = path.join(__dirname, '../../');

module.exports = (app) => {
    var router = require("express").Router();

    router.post("/", [authJwt.verifyToken], foods.create);
    router.get("/", foods.findAll);
    router.get("/:id", foods.findOne);
    router.put("/:id", [authJwt.verifyToken], foods.update);
    router.delete("/:id", [authJwt.verifyToken], foods.delete);
    // router.delete("/", [authJwt.verifyToken], foods.deleteAll);

    router.get('/images/:imageName', (req, res) => {
        const imageName = req.params.imageName;
        const imagePath = path.join(base_path, 'public/images', imageName);

        res.sendFile(imagePath);
    });

    app.use('/api/foods', router);
};
