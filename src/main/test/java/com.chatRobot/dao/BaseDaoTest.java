package com.chatRobot.dao;

import com.dist.dao.BaseDao;
import com.dist.entity.BaseEntity;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by Administrator on 2018/12/24.
 */

//加载Spring的配置文件
    @RunWith(SpringJUnit4ClassRunner.class)
    @ContextConfiguration({"classpath:spring-mybatis.xml"})
public class BaseDaoTest {

        @Autowired
        private BaseDao baseDao;


        @Test
        public void testSelectUser() throws Exception{
            long id = 1;
           BaseEntity baseEntity =  baseDao.selectUser(id);
           System.out.println("账号："+baseEntity.getUsername()+"邮箱："+baseEntity.getEmail());
        }
}
