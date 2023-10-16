import {Router} from "express";
import usersRouter from "./usersRoutes.js"
import rolesRouter from "./rolesRoutes.js"
import { logger } from "../middlewares/logger.js";
const router = Router();


router.use("/users", usersRouter);

// le pongo el logger en el medio que es el middelware que aplicaria a todas 
// las rutas de => rolesRouter
router.use("/roles",logger, rolesRouter);



// exportamos para que lo lea app.js 
export default router;