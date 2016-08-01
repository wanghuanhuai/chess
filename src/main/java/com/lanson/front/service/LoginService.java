package com.lanson.front.service;

import com.lanson.cms.dao.ShopUserDAO;
import com.lanson.cms.pojo.ShopUser;
import com.lanson.front.util.GenerateLinkUtils;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by fi25 on 2016/7/15.
 */
public class LoginService {
    @Autowired
    ShopUserDAO shopUserDAO;

    public ShopUser findUserByEmail(String email){
        ShopUser shopUser = shopUserDAO.findByEmail(email);

        shopUser.setRandomCode(GenerateLinkUtils.generateCheckcode(shopUser));

        updateRandomCode(shopUser);

        return  shopUser;
    }

    public void updateRandomCode(ShopUser shopUser){
        shopUserDAO.updateRandomCode(shopUser);
    }

    public  String findEmail(String email){
        int i= shopUserDAO.findEmail(email);
        if(i==0){
            return  "0";
        }
        return "1";
    }

}
