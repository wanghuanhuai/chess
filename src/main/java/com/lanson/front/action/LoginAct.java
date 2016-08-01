package com.lanson.front.action;

import com.lanson.cms.pojo.Product;
import com.lanson.cms.pojo.ShopUser;
import com.lanson.front.service.IndexService;
import com.lanson.front.service.LoginService;
import com.lanson.front.util.EmailUtils;
import com.lanson.front.util.GenerateLinkUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by fi25 on 2016/7/12.
 */
@Controller
public class LoginAct {
    @Autowired
    private LoginService loginService;
    @Autowired
    private IndexService indexService;

    @RequestMapping(value = "login.html")
    public  String loginPage(ModelMap model,Integer error){
        if(error!=null){
            if(error==1){
                model.addAttribute("Msg","The user name or password is incorrect. Please try again.");
            }
        }

        return  "login/login";
    }


    @RequestMapping(value="forget.html")
    public  void forgetPassword(HttpServletResponse response,ModelMap model,String email) throws IOException {

        ShopUser user  = loginService.findUserByEmail(email) ;

        // 发送重新设置密码的链接
        EmailUtils.sendResetPasswordEmail(user);
      response.sendRedirect("email-success.html");
    }


    @RequestMapping(value="email-success.html")
    public  String emailSuccess(ModelMap model,String email,Integer cateid){
        if(cateid==null){
            cateid = 1;
        }
        int count= indexService.productCount(cateid);
        List<Product> products = indexService.indexNewList();
        List<Product> hotProducts = indexService.indexHotList();
        model.addAttribute("cateId",cateid);
        model.addAttribute("count",count);
        model.addAttribute("products",products);
        model.addAttribute("hot",hotProducts);
        return  "login/email-success";
    }



    @RequestMapping(value="login/checkEmail.html")
    public  void checkEmail(HttpServletResponse response ,String email) throws IOException {

        String flag=loginService.findEmail(email);

        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        response.getWriter().write("{\"flag\":\"" + flag + "\"}");

    }



}
