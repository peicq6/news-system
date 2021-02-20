/**
 * 处理 get 请求参数
 * @param params
 * @returns
 */
export const paramsHandle = params => {
  let res = {};
  Object.keys(params).forEach(key => {
    if (typeof params[key] === "object") {
      Object.keys(params[key]).forEach(subKey => {
        res[`${key}[${subKey}]`] = params[key][subKey];
      });
    } else {
      res[key] = params[key];
    }
  });
  return { params: res };
};
