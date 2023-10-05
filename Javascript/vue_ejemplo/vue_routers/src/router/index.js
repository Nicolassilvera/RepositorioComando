import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import SystemView from '../views/SystemView.vue'
import AboutView from '../views/AboutView.vue'
import UserView from '../views/UserView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/about',
      name: 'about',
      component: AboutView
    },
    {
      path:'/system',
      name:'systemview',
      component: SystemView
    },
    {
      path:'/user',
      name:'userview',
      component: UserView
    }
  ]
})

export default router
