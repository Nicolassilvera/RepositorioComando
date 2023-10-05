<script>
import { RouterLink, RouterView } from 'vue-router'
import {IonApp, IonRouterOutlet} from '@ionic/vue'
export default {
  components: { IonApp, IonRouterOutlet}
}
</script>

<template>
  <ion-app>
    <nav>
      <RouterLink to="/">Home</RouterLink>
      <RouterLink to="/about">About</RouterLink>
      <RouterLink to="/system">system</RouterLink>
    </nav>
    <ion-router-outlet />
  </ion-app>
</template>

<style scoped>
</style>
