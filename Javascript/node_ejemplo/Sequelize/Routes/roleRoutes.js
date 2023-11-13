import { Router } from "express";
import RoleController from "../controller/RoleController.js"; 
const roleRouter = Router();
const roleController = new RoleController(); 
//----------------------------------------

roleRouter.get("", roleController.);
roleRouter.get("/:id");
roleRouter.post("/", );
roleRouter.put("/:id");
roleRouter.delete("/: id");


//----------------------------------------
export default roleRouter;