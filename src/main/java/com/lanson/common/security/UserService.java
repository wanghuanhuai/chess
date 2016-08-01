package com.lanson.common.security;

import com.lanson.cms.dao.ShopUserDAO;
import com.lanson.cms.pojo.ShopUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fi25 on 2016/7/12.
 */
@Service
public class UserService  implements UserDetailsService {
@Autowired
private ShopUserDAO shopUserDAO;

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException, DataAccessException {

        // TODO Auto-generated method stub
        boolean isActive=false;
        ShopUser user = shopUserDAO.findByUserName(username);
        if( user.getIsActive() == 'Y'){
            isActive=true;
        }

        if (user == null)
            throw new UsernameNotFoundException("The user name " + username
                    + " can not be found!");

        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        //增加access中配置的权限，实际上这里就是让所有登陆用户都具备该权限，
        //而真正的资源权限验证留给AccessDecisionManager来决定
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));

        //验证用户名和密码是否正确，以及是否权限正确
        return new User(username, user.getPassword().toLowerCase(),isActive, true,
                true, true, authorities);
    }
}
