import { axios } from '@/utils/request'

export function getAction (url, parameter) {
  return axios({
    url: url,
    method: 'get',
    params: parameter
  })
}

export function postAction (url, parameter) {
  return axios({
    url: url,
    method: 'post',
    data: parameter,
    transformRequest: [(params) => {
      let result = ''
      if (params) {
        Object.keys(params).forEach((key) => {
          if (!Object.is(params[key], undefined) && !Object.is(params[key], null)) {
            result += encodeURIComponent(key) + '=' + encodeURIComponent(params[key]) + '&'
          }
        })
      }
      return result
    }]
  })
}

export function postJsonAction (url, parameter) {
  return axios({
    url: url,
    method: 'post',
    data: parameter
  })
}

export function putAction (url, parameter) {
  return axios({
    url: url,
    method: 'put',
    data: parameter,
    transformRequest: [(params) => {
      let result = ''
      if (params) {
        Object.keys(params).forEach((key) => {
          if (!Object.is(params[key], undefined) && !Object.is(params[key], null)) {
            result += encodeURIComponent(key) + '=' + encodeURIComponent(params[key]) + '&'
          }
        })
      }
      return result
    }]
  })
}

export function putJsonAction (url, parameter) {
  return axios({
    url: url,
    method: 'put',
    data: parameter
  })
}

export function deleteAction (url, parameter) {
  return axios({
    url: url,
    method: 'delete',
    params: parameter
  })
}
export function uploadAction (url, parameter) {
  return axios({
    url: url,
    method: 'post',
    data: parameter,
    headers: {
      'Content-Type': 'multipart/form-data'
    }
  })
}
