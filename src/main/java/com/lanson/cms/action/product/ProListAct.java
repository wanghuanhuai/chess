package com.lanson.cms.action.product;

import com.lanson.cms.pojo.Category;
import com.lanson.cms.pojo.ImageInfo;
import com.lanson.cms.pojo.Product;
import com.lanson.cms.service.CategoryService;
import com.lanson.cms.service.ImageService;
import com.lanson.cms.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by fi25 on 2016/6/15.
 */
@Controller
public class ProListAct {
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ImageService imageService;

    @RequestMapping(value = "product/page.do")
    public  String  toPage(ModelMap model){
        List<Product> products = productService.SelectProducts();
        model.addAttribute("products", products);
        return  "product/glass-list" ;
    }
    @RequestMapping(value = "product/create.do")
    public  String  createPage(ModelMap model,Integer id){
        List<Category> categories= categoryService.selectCategoriesList();
        if(id!=null){
          Product product =  productService.selectProduct(id);
         List<ImageInfo> imageInfos = imageService.selectImageById(id);
         model.addAttribute("product",product);
         model.addAttribute("imageInfos",imageInfos);
        }
        model.addAttribute("categories",categories);
        return  "product/create-edit-product" ;
    }

    @RequestMapping(value = "product/delete.do")
    public void deleteProdtct(HttpServletResponse response,Integer id) throws IOException {

        productService.deleteProductById(id);

        response.setContentType("text/HTML;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.getWriter().write("({\"flag\":\"Y\"})");



    }



}
