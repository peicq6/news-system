package com.system.modules.system.service;

import com.system.base.service.BaseService;
import com.system.modules.system.entity.SysDict;
import com.system.modules.system.model.DictModel;

import java.util.List;
import java.util.Map;

/***
 * @ClassName SysDictService
 * @Description
 * @Author peicq pcq@bjbjxing.com
 * @Date 2021/1/7 17:30
 */
public interface SysDictService extends BaseService<SysDict> {
    /**
     * 查询全部字典项目
     *
     * @return
     */
    Map<String, List<DictModel>> queryAllDictItems();

}
