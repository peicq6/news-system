package com.news.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.news.system.base.service.impl.BaseServiceImpl;
import com.news.system.entity.SysDict;
import com.news.system.entity.SysDictItem;
import com.news.system.mapper.SysDictItemMapper;
import com.news.system.mapper.SysDictMapper;
import com.news.system.model.DictModel;
import com.news.system.service.SysDictService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class SysDictServiceImpl extends BaseServiceImpl<SysDictMapper, SysDict> implements SysDictService {

    @Autowired
    private SysDictMapper sysDictMapper;
    @Autowired
    private SysDictItemMapper sysDictItemMapper;
    /**
     * 查询全部字典项目
     *
     * @return
     */
    @Override
    public Map<String, List<DictModel>> queryAllDictItems() {
        Map<String, List<DictModel>> res = new HashMap<String, List<DictModel>>();
        List<SysDict> ls = sysDictMapper.selectList(null);
        LambdaQueryWrapper<SysDictItem> queryWrapper = new LambdaQueryWrapper<SysDictItem>();
        queryWrapper.eq(SysDictItem::getStatus, 1);
        queryWrapper.orderByAsc(SysDictItem::getSortOrder);
        List<SysDictItem> sysDictItemList = sysDictItemMapper.selectList(queryWrapper);

        for (SysDict d : ls) {
            List<DictModel> dictModelList = sysDictItemList.stream().filter(s -> d.getId().equals(s.getDictId())).map(item -> {
                DictModel dictModel = new DictModel();
                dictModel.setText(item.getItemText());
                dictModel.setValue(item.getItemValue());
                return dictModel;
            }).collect(Collectors.toList());
            res.put(d.getDictCode(), dictModelList);
        }
        log.info("-------登录加载系统字典-----" + res.toString());
        return res;
    }
}
