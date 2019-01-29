package com.dist.dao;

import com.dist.entity.BaseEntity;
import com.dist.entity.UserInfo;
import org.apache.ibatis.annotations.Param;

/**
 * Created by Administrator on 2018/12/24.
 */
public interface BaseDao {

     BaseEntity selectUser(long id);

     int userRegister(UserInfo userInfo);

     UserInfo userLogin(@Param("userName") String userName, @Param("password") String password);
}
