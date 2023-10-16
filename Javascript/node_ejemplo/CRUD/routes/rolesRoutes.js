import { Router } from "express";
const rolesRoutes = Router();
//---------------------------------------------------------

rolesRoutes.get("", (req, res)=>{
    res.send("");
})

rolesRoutes.get("/:id", (req, res)=>{
    res.send("Get all roles");
})

//---------------------------------------------------------
export default rolesRoutes;