package com.lanson.common.security;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.RememberMeAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.UrlPathHelper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by fi25 on 2016/7/18.
 */
public class SecurityFilter extends HandlerInterceptorAdapter {

    @Autowired
    public void setAllowUrls(String[] allowUrls) {
        this.allowUrls = allowUrls;
    }

    @Autowired
    public void setLoginUrl(String loginUrl) {
        this.loginUrl = loginUrl;
    }

    @Autowired
    public void setNoPermissionUrl(String noPermissionUrl) {
        this.noPermissionUrl = noPermissionUrl;
    }

    private String[] allowUrls;

    private String loginUrl;

    private String noPermissionUrl;


    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
       //==>>Begin to filter session====
        HttpSession session = request.getSession();
        SecurityContextImpl securityContextImpl = (SecurityContextImpl)
                session.getAttribute("SPRING_SECURITY_CONTEXT");


        String curPath=request.getRequestURL().toString();
       //===>> curpath

        String uri=getURI(request);
        if (isAllowURI(uri)){
            return true;
        }
        if(null==securityContextImpl ){
//           if(isRememberMeAuthenticated()){
//               return true;
//           } else{
               response.sendRedirect(getLoginURL(request));
               return false;

            /**
             * handle session and security if you want.
             */

        }
        return super.preHandle(request, response, handler);
    }


    private String getURI(HttpServletRequest request) {
        UrlPathHelper helper = new UrlPathHelper();
        String uri = helper.getOriginatingRequestUri(request);
        String ctxPath = helper.getOriginatingContextPath(request);
        int start = 0, i = 0, count = 0;
        if (!StringUtils.isBlank(ctxPath)) {
            count++;
        }
        while (i < count && start != -1) {
            start = uri.indexOf('/', start + 1);
            i++;
        }
        return uri.substring(start);
    }


    private boolean isAllowURI(String uri) {
        if(allowUrls!=null){
            for(String allowUrl:allowUrls){
                if(uri.equals(allowUrl)){
                    return true;
                }
            }
        }
        return false;
    }

    private String getLoginURL(HttpServletRequest request) {
        StringBuilder buff = new StringBuilder();
        if (loginUrl.startsWith("/")) {
            String ctx = request.getContextPath();
            if (!StringUtils.isBlank(ctx)) {
                buff.append(ctx);
            }
        }
        buff.append(loginUrl);
        return buff.toString();
    }

    /**
     2      * 判断用户是否从Remember Me Cookie自动登录
     3      * @return
     4      */
         private boolean isRememberMeAuthenticated() {

                 Authentication authentication = SecurityContextHolder.getContext()
                         .getAuthentication();
                if (authentication == null) {
                         return false;
                    }
               return RememberMeAuthenticationToken.class
                         .isAssignableFrom(authentication.getClass());
             }


}
