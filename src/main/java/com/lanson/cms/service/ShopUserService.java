package com.lanson.cms.service;

import com.lanson.cms.dao.ShopUserDAO;
import com.lanson.cms.pojo.ShopUser;
import com.lanson.cms.util.Common;
import com.lanson.front.util.GenerateLinkUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fi25 on 2016/7/20.
 */
@Service
public class ShopUserService {

    @Autowired
    ShopUserDAO shopUserDAO;

    /**
     *
     * @param userName
     * @return
     */
    public  String findUsername(String userName){
        int i= shopUserDAO.findUsername(userName);
        if(i==0){
            return  "0";
        }
        return "1";
    }

    /**
     *
     * @param email
     * @return
     */

    public  String findEmail(String email){
        int i= shopUserDAO.findEmail(email);
        if(i==0){
            return  "0";
        }
        return "1";
    }

    /**
     * 保存用户信息
     * @param shopUser
     * @param username
     */
    public void addShopUser(ShopUser shopUser,String username){
        shopUser.setLoginName(username);
        shopUser.setIsActive(Common.SHOP_USER_IS_ACTIVE);
        shopUserDAO.addShopUser(shopUser);
    }

    /**
     *
     * @return
     */
    public List<ShopUser> findShopUsers(){
       List<ShopUser> shopUsers= shopUserDAO.findShopUsers();
        return  shopUsers;
    }

    public  ShopUser findShopUserById(int id){
        ShopUser shopUser = shopUserDAO.findShopUserById(id);
        return  shopUser;
    }

    public  void updateShopUserById(ShopUser shopUser){
         shopUserDAO.updateShopUserById(shopUser);
    }



}
