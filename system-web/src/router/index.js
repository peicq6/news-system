import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  // {
  //   path: '/',
  //   name: 'menu',
  //   component: () => import('../components/layouts/Menu')
  // },
  {
    path: '/',
    name: 'user',
    component: () => import('../views/system/user')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
