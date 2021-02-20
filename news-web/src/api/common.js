import Vue from 'vue'
import { DB_DICT } from '@/store/mutation-types'

export function getDictItemsFromCache (dictCode) {
  if (Vue.ls.get(DB_DICT) && Vue.ls.get(DB_DICT)[dictCode]) {
    const dictItems = Vue.ls.get(DB_DICT)[dictCode]
    return dictItems
  }
}

/**
 * 获取图片访问路径
 * @param {String} fileUrl
 */
export function getFileAccessUrl (fileUrl) {
  if (!fileUrl) {
    return fileUrl
  }
  if (fileUrl.startsWith('http')) {
    return fileUrl
  }
  return 'http://49.232.110.63:9000/apk-public/' + fileUrl
}
