package com.lanson.front.service;

import com.lanson.cms.dao.ShopUserDAO;
import com.lanson.cms.pojo.ShopUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 * Created by fi25 on 2016/7/14.
 */
@Service
public class RegisterService {
    @Autowired
    private ShopUserDAO shopUserDAO;

     public  String findUsername(String userName){
        int i= shopUserDAO.findUsername(userName);
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
        shopUserDAO.addShopUser(shopUser);
    }
}
