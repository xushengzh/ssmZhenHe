package com.dist.services.impl;

import com.dist.dao.BaseDao;
import com.dist.entity.BaseEntity;
import com.dist.services.BaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/12/24.
 */
@Service("userService")
public class BaseServiceImpl implements BaseService {

    @Resource
    private BaseDao baseDao;


    @Override
    public BaseEntity selectUser(long id) {
        return baseDao.selectUser(id);
    }
}
