import Vue from "vue";
import Antd from "ant-design-vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import { DatePicker } from "ant-design-vue";
import "ant-design-vue/dist/antd.css";
import globalVariable from "./util/global_variable.js";
import globalFunc from "./util/global_func.js";

//配置全局变量
Vue.prototype.GLOBAL = globalVariable;
//使用全局函数
Vue.use(globalFunc);
Vue.config.productionTip = false;

Vue.use(Antd);
Vue.use(DatePicker);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
