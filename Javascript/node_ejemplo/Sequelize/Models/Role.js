import {DataTypes as DT, Model} from "sequelize"
import connection from "../connection/connection.js"
//----------------------------------------

class Role extends Model{}

// Creacion de tabla desde js ORM. 
Role.init({
    // atributos 1..n
    name:{
        type: DT.STRING,
        allowNull: false,
        defaultValue: "" // posibilidad de: valores default  
    }  
},{
    sequelize: connection,
    modelName: "Role",
    timestamps:false,
})

//----------------------------------------
export default Role;                    