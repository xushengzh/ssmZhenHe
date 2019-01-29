package com.dist.services;

import com.dist.entity.BaseEntity;
import com.dist.entity.UserInfo;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/12/24.
 */
@Service
public interface BaseService {

    public BaseEntity selectUser(long id);

    //用户注册
    public int userRegister(UserInfo userInfo);

    //用户登录
    public UserInfo userLogin( String userName, String password);
}
