
module.exports = {
  devServer: {
    port: 80,
    // 开发版动态代理，如需部署则需要Nginx代理
    proxy: {
      '/api': {
        // 代理api
        target: 'http://localhost:9000', // 后台接口域名
        changeOrigin: true // 是否跨域
      }
    }
  },
  css: {
    loaderOptions: {
      less: {
        modifyVars: {
          // 'primary-color': '#1890FF',
          'border-radius-base': '2px'
        },
        // DO NOT REMOVE THIS LINE
        javascriptEnabled: true
      }
    }
  }
}
