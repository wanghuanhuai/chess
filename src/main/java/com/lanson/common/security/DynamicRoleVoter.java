package com.lanson.common.security;

import org.springframework.security.access.AccessDecisionVoter;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.core.Authentication;

import java.util.Collection;

/**
 * Created by fi25 on 2016/7/12.
 */
public class DynamicRoleVoter  implements AccessDecisionVoter {

    public boolean supports(ConfigAttribute configAttribute) {
        return true;
    }

    public int vote(Authentication authentication, Object o, Collection collection) {
        return 0;
    }

    public boolean supports(Class aClass) {
        return true;
    }
}
