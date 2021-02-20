package com.news.system.util;

/**
 * @author: huangxutao
 * @date: 2019-06-14
 * @description: 缓存常量
 */
public interface CacheConstant {

	public static final String SPRING_CACHEKEY_PREFIX = "::";

	/**
	 * 登录用户Token令牌缓存
	 */
	public static final String USER_TOKEN_CACHE = "user:token:cache:";

	/**
	 * 登录用户信息缓存
	 */
	public static final String USER_LOGIN_CACHE = "user:login:cache:";

	/**
	 * 缓存用户完整信息
	 */
	public static final String SYS_USER_INFO_CACHE = "sys:cache:user";

	/**
	 * 缓存用户角色信息
	 */
	public static final String SYS_USER_ROLE_CACHE = "sys:cache:role";

	/**
	 * 缓存用户权限信息
	 */
	public static final String SYS_USER_PERMISSION_CACHE = "sys:cache:permission";

	/**
	 * 缓存用户菜单信息
	 */
	public static final String SYS_USER_MENU_CACHE = "sys:cache:menu";

	/**
	 * 缓存组织机构信息
	 */
	public static final String SYS_USER_ORGANIZATION_CACHE = "sys:cache:organization";

	/**
	 * 字典信息缓存
	 */
	public static final String SYS_DICT_CACHE = "sys:cache:dict";

	/**
	 * 表字典信息缓存
	 */
	public static final String SYS_DICT_TABLE_CACHE = "sys:cache:dictTable";

	/**
	 * 表字典信息缓存
	 */
	public static final String SYS_DICT_TABLE_BY_KEYS_CACHE = SYS_DICT_TABLE_CACHE + "ByKeys";

	/**
	 * 数据权限配置缓存
	 */
    public static final String SYS_DATA_PERMISSIONS_CACHE = "sys:cache:permission:datarules";

	/**
	 * 缓存用户信息
	 */
	public static final String SYS_USERS_CACHE = "sys:cache:user";

	/**
	 * 全部部门信息缓存
	 */
	public static final String SYS_DEPARTS_CACHE = "sys:cache:depart:alldata";


	/**
	 * 全部部门ids缓存
	 */
	public static final String SYS_DEPART_IDS_CACHE = "sys:cache:depart:allids";


	/**
	 * 测试缓存key
	 */
	public static final String TEST_DEMO_CACHE = "test:demo";

	/**
	 * 字典信息缓存
	 */
	public static final String SYS_DYNAMICDB_CACHE = "sys:cache:dbconnect:dynamic:";

	/**
	 * gateway路由缓存
	 */
	public static final String GATEWAY_ROUTES = "geteway_routes";


	/**
	 * gateway路由 reload key
	 */
	public static final String ROUTE_JVM_RELOAD_TOPIC = "gateway_jvm_route_reload_topic";

	/**
	 * TODO 冗余代码 待删除
	 *插件商城排行榜
	 */
	public static final String PLUGIN_MALL_RANKING = "pluginMall::rankingList";
	/**
	 * TODO 冗余代码 待删除
	 *插件商城排行榜
	 */
	public static final String PLUGIN_MALL_PAGE_LIST = "pluginMall::queryPageList";
}
