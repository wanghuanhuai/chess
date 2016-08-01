package com.lanson.cms.dao;


import com.lanson.cms.pojo.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fi25 on 2016/6/22.
 */
public interface CategoryDAO {
   List<Category> selectCategories();
   void addCategory(Category category);
   void updateNameById(@Param("id")int id,@Param("categoryName")String categoryName);
   void deleteCategoryById(@Param("id")int id);

}
