const path = require("path");
function resolve(dir) {
  return path.join(__dirname, dir);
}
module.exports = {
  chainWebpack: config => {
    config.resolve.alias
      .set("@", resolve("src"))
      .set("assets", resolve("src/assets"))
      .set("components", resolve("src/components"))
      .set("base", resolve("baseConfig"))
      .set("public", resolve("public"));
  },
  devServer: {
    port: 80,
    // 开发版动态代理，如需部署则需要Nginx代理
    proxy: {
      "/api": {
        //代理api
        target: "http://localhost:9000", // 后台接口域名
        changeOrigin: true //是否跨域
      }
    }
  }
};
