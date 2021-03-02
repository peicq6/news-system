import Vue from 'vue'
// eslint-disable-next-line import/no-duplicates
import Antd from 'ant-design-vue/es'
import App from './App.vue'
import router from './router'
import store from './store'
// eslint-disable-next-line import/no-duplicates
import { DatePicker } from 'ant-design-vue'
import 'ant-design-vue/dist/antd.less'
// import './util/filter' // global filter
import './components/global.less'
import globalVariable from './util/global_variable.js'
import globalFunc from './util/global_func.js'

// 配置全局变量
Vue.prototype.GLOBAL = globalVariable
Vue.config.productionTip = false
Vue.use(Antd)
Vue.use(DatePicker)
// 使用全局函数
Vue.use(globalFunc)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
