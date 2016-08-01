package com.lanson.front.action;

import com.lanson.cms.pojo.Product;
import com.lanson.front.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by fi25 on 2016/6/27.
 */
@Controller
public class IndexAct {

@Autowired
private IndexService indexService;


    @RequestMapping(value = "shop-index.html")
    public String  indexPage(ModelMap model,Integer cateid) throws IOException {
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
        return "shop-index" ;
    }
    @RequestMapping(value = "index.html")
    public String  indexHtml(ModelMap model,Integer cateid) throws IOException {
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
        return "shop-index" ;
    }




    @RequestMapping(value = "index.jspx")
    public String  index(ModelMap model,Integer cateid) throws IOException {
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
           return "shop-index" ;
    }



    @RequestMapping(value = "index/product.jspx")
    public void  categoryList(HttpServletResponse response,int page,Integer cateId) throws IOException {

        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        response.getWriter().write(indexService.indexProductList(page,cateId));
    }
}
