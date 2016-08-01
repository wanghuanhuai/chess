package com.lanson.front.action;

import com.lanson.cms.pojo.ShopUser;
import com.lanson.front.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by fi25 on 2016/7/14.
 */
@Controller
public class RegisterAct {
    @Autowired
    private RegisterService registerService;

    @RequestMapping(value = "register/checkUsername.html")
    public void reviewList(HttpServletResponse response,String username) throws IOException {

        String flag=registerService.findUsername(username);

        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        response.getWriter().write("{\"flag\":\""+flag+"\"}");
    }

    @RequestMapping(value = "register/save.html")
    public  String  registerSave(ShopUser shopUser,String username){
        registerService.addShopUser(shopUser,username);
        return "login/login";
    }



}
