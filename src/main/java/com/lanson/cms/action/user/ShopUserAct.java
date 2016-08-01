package com.lanson.cms.action.user;

import com.lanson.cms.pojo.ShopUser;
import com.lanson.cms.service.ShopUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by fi25 on 2016/7/19.
 */
@Controller
@RequestMapping(value = "shopUser")
public class ShopUserAct {
    @Autowired
    private ShopUserService shopUserService;

    @RequestMapping(value = "/create.do")
    public String addShopUserPage(){
        return  "shopuser/add-shop-user";
    }

    @RequestMapping(value = "/listPage.do")
    public String listShopUserPage(ModelMap model){

       List<ShopUser> shopUsers= shopUserService.findShopUsers();
        model.addAttribute("shopUsers",shopUsers);
        return  "shopuser/list-shop-user";
    }

    @RequestMapping(value = "/editPage.do")
    public String editShopUserPage(ModelMap model,int id){

       ShopUser shopUser= shopUserService.findShopUserById(id);
        model.addAttribute("shopUser",shopUser);
        return  "shopuser/edit-shop-user";
    }



    @RequestMapping(value = "/checkShopUser.do")
    public  void checkShopUser(HttpServletResponse response,String username) throws IOException {
        String flag=shopUserService.findUsername(username);

        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        response.getWriter().write("{\"flag\":\""+flag+"\"}");
    }
    @RequestMapping(value = "/checkEmail.do")
    public  void checkEmail(HttpServletResponse response,String email) throws IOException {
        String flag=shopUserService.findEmail(email);

        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.getWriter().write("{\"flag\":\""+flag+"\"}");
    }

    @RequestMapping(value = "/addShopUser.do")
    public  String addShopUser(ShopUser shopUser ,String username) throws IOException {
        shopUserService.addShopUser(shopUser,username);
        return "shopuser/add-shop-user";
    }

    @RequestMapping(value = "/update.do")
    public  void updateShopUser(HttpServletResponse response,ShopUser shopUser ) throws IOException {
        shopUserService.updateShopUserById(shopUser);
        response.sendRedirect("/admin/cms/shopUser/listPage.do");
    }

}
