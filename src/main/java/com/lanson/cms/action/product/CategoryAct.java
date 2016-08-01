package com.lanson.cms.action.product;

import com.lanson.cms.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by fi25 on 2016/6/21.
 */
@Controller
@RequestMapping(value =  "product")
public class CategoryAct {
    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "classify.do")
    public  String toPage(){

        return  "product/classify-product";
    }

    @RequestMapping(value = "category.do")
    public  void  categoryList(HttpServletResponse response) throws IOException {

        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        response.getWriter().write(categoryService.selectCategories());
    }

    @RequestMapping(value = "category/add.do")
    public  void  categoryAdd(HttpServletResponse response,String parentid,String text) throws IOException {
        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        int id = categoryService.addCategory(parentid,text);
        response.getWriter().write("{"+"\"id\": \""+id+"\"}");
    }

    @RequestMapping(value = "category/rename.do")
    public  void  categoryRename(HttpServletResponse response,int id,String text) throws IOException {
         categoryService.updateNameById(id,text);

        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.getWriter().write("({\"flag\":\"Y\"})");
    }

    @RequestMapping(value = "category/delete.do")
    public  void  deleteCategory(HttpServletResponse response,int id) throws IOException {
        categoryService.deleteCategoryById(id);

        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.getWriter().write("({\"flag\":\"Y\"})");
    }





}
