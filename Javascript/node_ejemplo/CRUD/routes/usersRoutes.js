import {Router} from "express"
const usersRouters = Router()
//---------------------------------------------------------

// Crear usuario
usersRouters.get("", (req, res)=>{
    res.send("get users");
})

usersRouters.get("/:id", (req, res)=>{
    console.log(req.params);
    res.send("get user by id");
})

usersRouters.post("", (req, res)=>{
    res.send("create user");
})

usersRouters.put("/:id", (req, res)=>{
    res.send("update user");
})

usersRouters.delete(":id", (req, res)=>{
    res.send("delete user")
})

//---------------------------------------------------------
export default usersRouters;