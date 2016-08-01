package com.lanson.cms.action.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by fi25 on 2016/6/14.
 */
@Controller
public class LoginAct {
//@RequestMapping(value = "/admin/shop/index.do")
//    public  String index(){
//    return  "index";
//    }

    @RequestMapping(value = "index.do")
    public  String index1(){
        return  "index";
    }



}
