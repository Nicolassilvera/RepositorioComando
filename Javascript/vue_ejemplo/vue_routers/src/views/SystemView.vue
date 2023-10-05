<template>
  <div>
    <h2> Hola forro </h2>
    codigo <input v-model="usuario" type="text">
    <button v-on:click="irAUsuario"> Ir a about </button>
  </div>
</template>

<script>
export default {
  data(){
    return{
      usuario:''
    }
  },
  methods:{
    irAUsuario(){
      this.$router.push("user/" + this.usuario);
    }
  }    
}
</script>

<style>
  
</style>