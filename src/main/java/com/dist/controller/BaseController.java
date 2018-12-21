package com.dist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2018/12/21.
 */
@Controller
public class BaseController {

    @GetMapping("/")
    public String getIndexPage(){
      return  "index";
    }


}
