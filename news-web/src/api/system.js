import { getAction, postAction, putAction, deleteAction } from '@/api/manage'

const prefix = 'http://36.112.98.102:9621/system'
// const prefix = 'http://localhost:9622'

export const listUser = (p) => getAction(prefix + '/user', p)
export const addUser = (p) => postAction(prefix + '/user', p)
export const editUser = (p) => putAction(prefix + '/user', p)
export const deleteUser = (p) => deleteAction(prefix + '/user/' + p)
export const getUserRole = (p) => getAction(prefix + '/user/role/' + p)
export const listRoleUser = (p) => getAction(prefix + '/user/listRoleUser', p)
export const listRoleUserSelect = (p) => getAction(prefix + '/user/listRoleUserSelect', p)
export const addRoleUser = (p) => postAction(prefix + '/user/addRoleUser', p)
export const deleteRoleUser = (p) => deleteAction(prefix + '/user/deleteRoleUser', p)

export const getAllRole = () => getAction(prefix + '/role/all')
export const listRole = (p) => getAction(prefix + '/role', p)
export const addRole = (p) => postAction(prefix + '/role', p)
export const editRole = (p) => putAction(prefix + '/role', p)
export const deleteRole = (p) => deleteAction(prefix + '/role/' + p)
export const getRoleMenu = (p) => getAction(prefix + '/role/menu/' + p)

export const listMenu = (p) => getAction(prefix + '/menu', p)
export const getMenu = (p) => getAction(prefix + '/menu/' + p)
export const addMenu = (p) => postAction(prefix + '/menu', p)
export const editMenu = (p) => putAction(prefix + '/menu', p)
export const deleteMenu = (p) => deleteAction(prefix + '/menu/' + p)

export const listDict = (p) => getAction(prefix + '/dict', p)
export const addDict = (p) => postAction(prefix + '/dict', p)
export const editDict = (p) => putAction(prefix + '/dict', p)
export const deleteDict = (p) => deleteAction(prefix + '/dict/' + p)
export const listDictItem = (p) => getAction(prefix + '/dict/item', p)
export const addDictItem = (p) => postAction(prefix + '/dict/item', p)
export const editDictItem = (p) => putAction(prefix + '/dict/item', p)
export const deleteDictItem = (p) => deleteAction(prefix + '/dict/item/' + p)

export const listTenant = (p) => getAction(prefix + '/tenant', p)

export const listLoginLog = (p) => getAction(prefix + '/log/loginLog', p)
export const listDataLog = (p) => getAction(prefix + '/log/dataLog', p)

export const commonFileUpload = prefix + '/common/file/upload'
export const commonFileAuthorize = (p) => postAction(prefix + '/common/file/authorize', p)
