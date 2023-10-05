<template>
  <div>
    <p> Formulario cliente</p>
    Nombre <input v-model="cliente.nombre">
    <br/>
    Apellido <input v-model="cliente.apellido">
    <br/>
    <button v-on:click="agregarCliente">Agregar</button>
  </div>
</template>

<script>
export default {
    data(){
        return{
            cliente:{
                nombre:'',
                apellido:''
            }
        }
    },  
    methods:{
        agregarCliente(){
            this.$emit('agregar', this.cliente); // Emite una llamada al metodo de detalle --> ('nombrellamada', datoAEnviar)
        }
    }
}
</script>

<style>

</style>