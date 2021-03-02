//全局变量

//验证-不允许录入特殊字符

const validateSpecialCharacter = (rule, value, callback) => {
  if (/[`~@#$%^*<>"']/g.test(value)) {
    callback(new Error("不支持特殊字符"));
  } else {
    callback();
  }
};

//验证-不能包含中文
const validateExcludeCN = (rule, value, callback) => {
  if (/[`~@#$%^*<>"']/g.test(value)) {
    callback(new Error("不支持特殊字符"));
  } else if (!/^[^\u4e00-\u9fa5]*$/.test(value)) {
    callback(new Error("不能包含中文"));
  } else {
    callback();
  }
};


//验证-手机号
const validatePhone = (rule, value, callback) => {
  if (!value) {
    callback();
  }
  if (!/^1[3456789]\d{9}$/g.test(value)) {
    callback(new Error("手机号格式不正确"));
  } else {
    callback();
  }
};
//验证-邮箱
const validateEmail = (rule, value, callback) => {
  if (!value) {
    callback();
  }
  if (
    value !== "" &&
    !/^([a-zA-Z0-9]+[-_\\.]?)+@[a-zA-Z0-9]+(\.[a-z]{2,3}){1,2}$/g.test(
      value
    )
  ) {
    callback(new Error("请输入正确的邮箱"));
  } else {
    callback();
  }
};
//验证-数字
const validateNumber = (rule, value, callback) => {
  if (!value) {
    callback();
  } else if (
    String(value).indexOf(".") > -1 &&
    String(value).split(".")[1].length > 3
  ) {
    callback(new Error("小数点后只允许输入3位"));
  } else if (
    !/^\d+(\.\d+)?$/g.test(value)
  ) {
    callback(new Error("请输入正确的数字"));
  } else {
    callback();
  }
};
//验证-数字-小数点后六位
const validateNumberPointSix = (rule, value, callback) => {
  if (!value) {
    callback();
  } else if (
    String(value).indexOf(".") > -1 &&
    String(value).split(".")[1].length > 6
  ) {
    callback(new Error("小数点后只允许输入6位"));
  } else if (
    !/^\d+(\.\d+)?$/g.test(value)
  ) {
    callback(new Error("请输入正确的数字"));
  } else {
    callback();
  }
};
//验证-正整数
const validatePositiveInteger = (rule, value, callback) => {
  if (!value) {
    callback();
  } else if (
    String(value).indexOf(".") > -1
  ) {
    callback(new Error("请输入正整数"));
  } else if (
    !/^\d+(\.\d+)?$/g.test(value)
  ) {
    callback(new Error("请输入正确的数字"));
  } else {
    callback();
  }
};
//验证-年份 capital
const validateYear = (rule, value, callback) => {
  if (!value) {
    callback();
  } else if (!/^[1-9]\d{3}$/g.test(value)) {
    callback(new Error("请输入正确的年份"));
  } else {
    callback();
  }
};
//验证-大写字母 /^[A-Z]+$/
const validateEapital = (rule, value, callback) => {
  if (!/^[A-Z]+$/g.test(value)) {
    callback(new Error("请输入大写字母"));
  } else {
    callback();
  }
};


export default {
  validateSpecialCharacter,
  validateExcludeCN,
  validatePhone,
  validateEmail,
  validateNumber,
  validateNumberPointSix,
  validatePositiveInteger,
  validateYear,
  validateEapital,

};
