package com.lanson.cms.dao;

import com.lanson.cms.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fi25 on 2016/6/15.
 */
public interface ProductDAO {

     List<Product> selectProductList();

     void  saveProduct(Product product);

     void updateProductById(Product product);

     void setCateIds(@Param("productId")int productId,@Param("cateIds")Integer[] cateIds);

     Product    selectProduct(@Param("id")Integer id);

     Product selectProductImagesById(@Param("id")Integer id);

     List<Product> selectProductsDesc();

     List<Product> selectProductsByTopReview();

     void deleteProductById(@Param("id")Integer id);

     List<Product> indexSelectProducts(@Param("start")int start,@Param("end")int end);

     List<Product> indexSelectCount();

     int isExistCategory(@Param("productId")int productId,@Param("cateId")Integer cateId);
}
