import Vue from 'vue'
import { login, getRouter, logout } from '@/api/login'
import { USER_TOKEN, USER_INFO, USER_ROLES, USER_PERMISSIONS, USER_ROUTER, DB_DICT } from '@/store/mutation-types'

const user = {
  state: {
    avatar: '',
    nickname: '',
    welcome: ''
  },

  mutations: {
    SET_AVATAR: (state, avatar) => {
      state.avatar = avatar
    },
    SET_NICKNAME: (state, nickname) => {
      state.nickname = nickname
    },
    SET_WELCOME: (state, welcome) => {
      state.welcome = welcome
    }
  },

  actions: {
    // 登录
    Login ({ commit }, userInfo) {
      return new Promise((resolve, reject) => {
        login(userInfo).then(response => {
          if (response.success) {
            const result = response.result
            const userInfo = result.userInfo
            Vue.ls.set(USER_TOKEN, result.token)
            Vue.ls.set(USER_INFO, userInfo)
            Vue.ls.set(USER_ROLES, result.roles)
            Vue.ls.set(USER_PERMISSIONS, result.permissions)
            Vue.ls.set(DB_DICT, result.dict)

            commit('SET_AVATAR', '')
            commit('SET_NICKNAME', '')
            commit('SET_WELCOME', '')
            commit('SET_ROUTERS', [])
          } else {
            reject(new Error(response.message))
          }
          resolve()
        }).catch(error => {
          reject(error)
        })
      })
    },

    // 获取路由信息
    GetRouter ({ commit }) {
      return new Promise((resolve, reject) => {
        // if (Vue.ls.get(USER_ROUTER)) {
        //   resolve({ result: Vue.ls.get(USER_ROUTER) })
        // } else {
        getRouter().then(response => {
          const menuData = response.result
          if (menuData && menuData.length > 0) {
            menuData.forEach((item, index) => {
              if (item['children']) {
                const hasChildrenMenu = item['children'].filter((i) => {
                  return !i.hidden || i.hidden === false
                })
                if (hasChildrenMenu === null || hasChildrenMenu.length === 0) {
                  item['hidden'] = true
                }
              }
            })
            // Vue.ls.set(USER_ROUTER, menuData)
          } else {
            reject(new Error('routers must be a non-null array !'))
          }

          resolve(response)
        }).catch(error => {
          reject(error)
        })
        // }
      })
    },

    // 登出
    Logout ({ commit }) {
      return new Promise((resolve) => {
        logout().then(() => {
          Vue.ls.remove(USER_TOKEN)
          resolve()
        }).catch(error => {
          Vue.ls.remove(USER_TOKEN)
          console.log(error)
          resolve()
        }).finally(() => {
          Vue.ls.remove(USER_INFO)
          Vue.ls.remove(USER_ROLES)
          Vue.ls.remove(USER_PERMISSIONS)
          Vue.ls.remove(DB_DICT)
          Vue.ls.remove(USER_ROUTER)

          setTimeout(() => {
            commit('SET_AVATAR', '')
            commit('SET_NICKNAME', '')
            commit('SET_WELCOME', '')
            commit('SET_ROUTERS', [])
          }, 100)
        })
      })
    }

  }
}

export default user
