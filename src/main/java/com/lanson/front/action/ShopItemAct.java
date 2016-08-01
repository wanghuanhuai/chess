package com.lanson.front.action;

import com.lanson.cms.pojo.Product;
import com.lanson.cms.pojo.Review;
import com.lanson.cms.pojo.ShopUser;
import com.lanson.front.service.IndexService;
import com.lanson.front.service.ShopItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by fi25 on 2016/6/30.
 */
@Controller
public class ShopItemAct {
@Autowired
private ShopItemService shopItemService;

    @Autowired
    private IndexService indexService;




    @RequestMapping(value = "shop-item.html")
    public String pageItemById(ModelMap model,Integer id){
       if (id==null){
           id= 1;
       }
       Product product = shopItemService.selectProductImagesById(id);
        List<Product> products = indexService.indexNewList();
        List<Product> hotProducts = indexService.indexHotList();


        int count = shopItemService.pageCountByProductId(id);
        int totalCount= shopItemService.countByProductId(id);
        float totalRate=shopItemService.averageRate(id);
        float average = 0;
        if(totalCount!=0){
            average = totalRate/totalCount;
        }

        model.addAttribute("totalCount",totalCount);
        model.addAttribute("product",product);
        model.addAttribute("count",count);
        model.addAttribute("average",average);
        model.addAttribute("products",products);
        model.addAttribute("hot",hotProducts);


        return "shop-item";
    }





    @RequestMapping(value = "shopitem/review.html")
    public void addReviewInfo(HttpServletRequest request,HttpServletResponse response,Review review) throws IOException {

        SecurityContextImpl securityContextImpl = (SecurityContextImpl) request
                .getSession().getAttribute("SPRING_SECURITY_CONTEXT");
// 登录名
        if(securityContextImpl==null){
            response.sendRedirect("/login.html");
            return;
        }


        shopItemService.addReview(securityContextImpl,review);
        response.sendRedirect("/shop-item.html?id="+review.getProductId());
    }


    @RequestMapping(value = "shopitem/reviewList.html")
    public void reviewList(HttpServletResponse response,Integer page,Integer productId) throws IOException {
        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        response.getWriter().write(shopItemService.ReviewListPage(page,productId));
    }

}

