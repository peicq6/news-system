import { getAction, postJsonAction, deleteAction } from '@/api/manage'

/**
 * 用户管理-用户列表
 */
export const getUserList = p => getAction('/api/user', p)

/**
 * 用户管理-添加用户
 */
export const addUser = p => postJsonAction('/api/user', p)

/**
 * 用户管理-删除用户
 */
export const delUser = p => deleteAction('/api/user/' + p)
