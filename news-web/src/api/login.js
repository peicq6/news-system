import { getAction, postAction } from '@/api/manage'

const prefix = 'http://localhost:9000'

export const login = (p) => postAction(prefix + '/login', p)
export const logout = () => postAction(prefix + '/logout')
export const getCaptcha = (p) => getAction(prefix + '/captcha/' + p)
export const getSmsCaptcha = (p) => postAction(prefix + '/smsCaptcha', p)

export const getRouter = () => getAction(prefix + '/menu/getUserRouter')
