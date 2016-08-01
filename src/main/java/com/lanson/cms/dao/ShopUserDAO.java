package com.lanson.cms.dao;

import com.lanson.cms.pojo.ShopUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fi25 on 2016/7/12.
 */
public interface ShopUserDAO {

    List<ShopUser> findShopUsers();

    ShopUser findShopUserById(@Param("id")int id);

    ShopUser findByUserName(@Param("userName")String userName);

    ShopUser findByEmail(@Param("email")String email);

   void  updateRandomCode(ShopUser shopUser);

    void updateShopUserById(ShopUser shopUser);

   int findUsername(@Param("userName")String userName);

   int  findEmail(@Param("email")String email);

    void  addShopUser(ShopUser shopUser);

}
