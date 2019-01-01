package com.dist.controller;

import com.dist.entity.BaseEntity;
import com.dist.entity.UserInfo;
import com.dist.services.BaseService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/12/24.
 */

@Controller
@RequestMapping("/user")
public class BaseController {

       @Resource
       private BaseService baseService;

       @RequestMapping("/showUser")
       public void selectUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
                   request.setCharacterEncoding("utf-8");
                   response.setCharacterEncoding("utf-8");
                  long userId =  Long.parseLong(request.getParameter("id"));
                  BaseEntity baseEntity = baseService.selectUser(userId);
                  ObjectMapper objectMapper = new ObjectMapper();
                  response.getWriter().write(objectMapper.writeValueAsString(baseEntity));

                  response.getWriter().close();


       }

    /**
     * 用户注册
     */
    @RequestMapping("/register")
    @ResponseBody
    public Map<String,Object> userRegister(String userAccount, String userPassword){
           Map<String,Object> map = new HashMap<>();
           UserInfo userInfo = new UserInfo();
           userInfo.setUserName(userAccount);
           userInfo.setPassword(userPassword);
           int result = baseService.userRegister(userInfo);
           if (result >0 ){
               map.put("info","0");
               return map;
           }
           map.put("info","1");
           return map;
    }

    /**
     * 跳转注册界面
     */
    @RequestMapping("/registerPage")
    public ModelAndView toRegisterPage(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("/register");
        return mv;
    }

    /**
     * idea Mac测试
     */

    public String myIdea(){

        return "Hello word!";
    }

}
