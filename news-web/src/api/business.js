import { getAction, postJsonAction, putJsonAction, deleteAction } from '@/api/manage'

const prefix = 'http://localhost:9000'
// const prefix = 'http://yapi.bjbjxing.com:30000/mock/25/business'

/**
 * 机构管理-机构列表
 */
export const getOrgMgtList = (p) => getAction(prefix + '/orgmgt', p)

/**
 * 机构管理-查询机构
 */
export const getOrgMgt = (p) => getAction(prefix + '/orgmgt/' + p)

/**
 * 机构管理-添加机构
 */
export const addOrgMgt = (p) => postJsonAction(prefix + '/orgmgt', p)

/**
 * 机构管理-提交审核
 */
export const auditOrgMgt = (p) => postJsonAction(prefix + '/orgmgt', p)

/**
 * 机构管理-删除机构
 */
export const deleteOrg = (p) => deleteAction(prefix + '/orgmgt/' + p)

/**
 * 机构管理-上传图片身份证和营业执照
 */
export const uploadBizLicenseAndIDcard = prefix + '/orgmgt/uploadBizLicenseAndIDcard/'

/**
 * 机构管理-验证图片身份证和营业执照
 */
export const verifyBizLicenseAndIDcard = (p) => postJsonAction(prefix + '/orgmgt/verifyBizLicenseAndIDcard/', p)

/**
 * 机构信息管理-机构下拉列表
 */
export const getOrgSelect = (p) => getAction(prefix + '/orginfo/getOrgList', p)

/**
 * 课程管理-查询课程类目
 */
export const getListOrgCategory = (p) => getAction(prefix + '/course/listOrgCategory', p)

/**
 * 机构信息管理-获取机构详情
 */
export const getOrgInfo = (p) => getAction(prefix + '/orginfo/getOrgInfoById/' + p)

/**
 * 机构信息管理-机构信息提交
 */
export const saveOrgInfo = (p) => postJsonAction(prefix + '/orginfo/saveOrgInfo', p)

/**
 * 课程管理-课程列表
 */
export const getCourseList = (p) => getAction(prefix + '/course/listCourse', p)

/**
 * 课程管理-添加课程
 */
export const saveCourse = (p) => postJsonAction(prefix + '/course/saveCourse', p)

/**
 * 课程管理-修改课程
 */
export const updateCourse = (p) => putJsonAction(prefix + '/course/updateCourse', p)

/**
 * 课程管理-课程详情
 */
export const getCourseInfo = (p) => getAction(prefix + '/course/getCourse', p)

/**
 * 课程管理-查询所有课程
 */
export const queryAllCoures = (p) => getAction(prefix + '/course/queryAllCoures', p)

/**
 * 活动管理-添加活动
 */
export const saveActivity = (p) => postJsonAction(prefix + '/activity/saveActivity', p)

/**
 * 活动管理-编辑活动
 */
export const updateActivity = (p) => putJsonAction(prefix + '/activity/updateActivity', p)

/**
 * 活动管理-活动列表
 */
export const getActivityList = (p) => getAction(prefix + '/activity/listActivity', p)

/**
 * 活动管理-删除活动
 */
export const deleteAct = (p) => deleteAction(prefix + '/activity/deleteActivity/' + p)

/**
 * 活动管理-修改活动状态
 */
export const upActivityStatus = (p) => putJsonAction(prefix + '/activity/activityStatusUpdate', p)

/**
 * 活动管理-获取详情
 */
export const getActivityById = (p) => getAction(prefix + '/activity/getActivitInfo/' + p)
/**
 * 宣传展示-宣传展示列表
 */
export const getPublicityList = (p) => getAction(prefix + '/publicity/listPublicity', p)

/**
 * 宣传展示-设置展示
 */
// export const addPublicity = (p) => postJsonAction(prefix + '/publicity/addPublicity', p)

/**
 * 宣传展示-添加展示
 */
export const addPublicity = (p) => postJsonAction(prefix + '/publicity/addPublicity', p)

/**
 * 宣传展示-编辑展示
 */
export const editPublicity = (p) => postJsonAction(prefix + '/publicity/editPublicity/' + p)

/**
 * 宣传展示-同步展示
 */
export const syncPublicity = (p) => postJsonAction(prefix + '/publicity/syncPublicity', p)

/**
 * 宣传展示-清除展示
 */
export const delPublicity = (p) => deleteAction(prefix + '/publicity/' + p)

/**
 * 宣传展示-获取同步机构
 */
export const getSyncOrg = (p) => getAction(prefix + '/publicity/getSyncOrg', p)

/**
 * 消息管理-消息列表
 */
export const getListMessage = (p) => getAction(prefix + '/evaluation/listEvaluation', p)

/**
 * 消息管理-回复消息
 */
export const replyMessage = (p) => postJsonAction(prefix + '/evaluation/replyEvaluation', p)

/**
 * 粉丝管理-粉丝列表
 */
export const getListFans = (p) => getAction(prefix + '/fans/listFans', p)

/**
 * 粉丝管理-黑名单列表
 */
export const getBlacklist = (p) => getAction(prefix + '/fans/getBlacklist', p)

/**
 * 粉丝管理-粉丝标签列表
 */
export const getListFansTag = (p) => getAction(prefix + '/fans/fansTagList', p)

/**
 * 粉丝管理-新建标签
 */
export const addFansTag = (p) => postJsonAction(prefix + '/fans/addFansTag', p)

/**
 * 粉丝管理-修改备注
 */
export const updateFansRemark = (p) => postJsonAction(prefix + '/fans/updateFansRemark', p)

/**
 * 粉丝管理-标签设置
 */
export const setFansTag = (p) => postJsonAction(prefix + '/fans/makeTag', p)

/**
 * 粉丝管理-黑名单
 */
export const setBlacklist = (p) => postJsonAction(prefix + '/fans/setBlacklist', p)

/**
 * 素材管理-新建素材分组
 */
export const addMaterialGroup = (p) => postJsonAction(prefix + '/material/addMaterialGroup', p)

/**
 * 素材管理-素材图片列表
 */
export const listMaterial = (p) => getAction(prefix + '/material/listMaterial', p)

/**
 * 素材管理-移动素材分组
 */
export const moveMaterial = (p) => postJsonAction(prefix + '/material/moveMaterial', p)

/**
 * 素材管理-重命名素材
 */
export const renameMaterial = (p) => postJsonAction(prefix + '/material/renameMaterial', p)

/**
 * 素材管理-重命名素材分组
 */
export const renameMaterialGroup = (p) => postJsonAction(prefix + '/material/renameMaterialGroup', p)

/**
 * 素材管理-删除素材分组
 */
export const deleteMaterialGroup = (p) => deleteAction(prefix + '/material/deleteMaterialGroup/' + p)

/**
 * 素材管理-删除素材
 */
export const deleteMaterial = (p) => deleteAction(prefix + '/material/deleteMaterial/' + p)

/**
 * 素材管理-新增素材
 */
export const addMaterial = (p) => postJsonAction(prefix + '/material/addMaterial', p)
