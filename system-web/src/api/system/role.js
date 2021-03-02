import { getAction } from '@/api/manage'

/**
 * 获取全部角色
 * @param p
 * @returns {AxiosPromise}
 */
export const listRole = p => getAction('/api/role/listRole', p)
