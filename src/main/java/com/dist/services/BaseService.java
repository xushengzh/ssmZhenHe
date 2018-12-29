package com.dist.services;

import com.dist.entity.BaseEntity;
import com.dist.entity.UserInfo;

/**
 * Created by Administrator on 2018/12/24.
 */
public interface BaseService {

    public BaseEntity selectUser(long id);

    //用户注册
    public int userRegister(UserInfo userInfo);
}
