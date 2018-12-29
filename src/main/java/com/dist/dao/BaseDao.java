package com.dist.dao;

import com.dist.entity.BaseEntity;
import com.dist.entity.UserInfo;

/**
 * Created by Administrator on 2018/12/24.
 */
public interface BaseDao {

     BaseEntity selectUser(long id);

     int userRegister(UserInfo userInfo);
}
