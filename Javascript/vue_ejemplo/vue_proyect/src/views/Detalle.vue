<template>
    <div>
        <h2> Detalle clientes </h2>
        {{clientes}}
        <Cliente @agregar="agregarAlaLista"/> <!-- recibe la llamda de Cliente y lo usa internamente-->
    </div>
</template>

<script>
    import Cliente from './Cliente.vue'
    export default {    
        components:{
            Cliente
        },
        data(){
            return{
                clientes: []
            }
        },
        methods:{
            agregarAlaLista(cliente){
                this.clientes.push(cliente);
            }
        } 
    }
</script>

<style>

</style>