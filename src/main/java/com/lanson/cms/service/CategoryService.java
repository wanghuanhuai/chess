package com.lanson.cms.service;

import com.lanson.cms.dao.CategoryDAO;
import com.lanson.cms.pojo.Category;
import com.lanson.cms.pojo.json.CategoryJson;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fi25 on 2016/6/22.
 */
@Service
public class CategoryService {
@Autowired
   private CategoryDAO categoryDAO;

    public  List<Category>  selectCategoriesList(){

        List<Category> categories = categoryDAO.selectCategories();
        return  categories;
    }

    public String  selectCategories(){
        List<Category> categories = categoryDAO.selectCategories();
        List<CategoryJson> CategoryJsonList= new ArrayList<CategoryJson>();
        for(Category category:categories){

            CategoryJson categoryJson = new CategoryJson();
            categoryJson.setId(category.getId());
            //上级节点为0时 为根本目录
            if(category.getParentId()==0){
                categoryJson.setParent("#");
            }else{
                categoryJson.setParent(Integer.toString(category.getParentId()));
            }
            categoryJson.setText(category.getCategoryName());
            categoryJson.setIcon("fa fa-folder icon-state-danger");
            CategoryJsonList.add(categoryJson);
        }

        JSONArray arr=JSONArray.fromObject(CategoryJsonList);
      return arr.toString();
    }

    public  int  addCategory(String parentid,String text){
        Category category = new Category();
        category.setCategoryName(text);
        category.setParentId(Integer.parseInt(parentid));
        categoryDAO.addCategory(category);
        return  category.getId();
    }

    public  void updateNameById(int id,String text){
        categoryDAO.updateNameById(id,text);
    }

    public  void deleteCategoryById(int id){
        categoryDAO.deleteCategoryById(id);
    }


}
