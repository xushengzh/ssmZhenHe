package com.dist.controller;

import com.dist.entity.BaseEntity;
import com.dist.services.BaseService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.deploy.net.HttpResponse;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

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
}
