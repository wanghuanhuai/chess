package com.lanson.cms.service;

import com.lanson.cms.dao.ImageInfoDAO;
import com.lanson.cms.dao.ProductDAO;
import com.lanson.cms.pojo.ImageInfo;
import com.lanson.cms.pojo.Product;
import com.lanson.cms.util.tool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fi25 on 2016/6/15.
 */
@Service
public class ProductService {
    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private ImageInfoDAO imageInfoDAO;

    /**
     * 查询所有产品
     * @return
     */
    public List<Product> SelectProducts(){
       List<Product> products = productDAO.selectProductList();
        return  products;
    }

    public  void  saveProduct(Product product,Integer[] cateIds,List<ImageInfo> imageInfos){
        product.setCreateDate(tool.getCurDate());

        if(product.getId()!=0){
            productDAO.updateProductById(product);
        }else {
            productDAO.saveProduct(product);
        }
      if(cateIds!=null){
          productDAO.setCateIds(product.getId(),cateIds);
      }
        if(imageInfos!=null) {
            imageInfoDAO.updateBatch(imageInfos, product.getId());

        }

    }

    public  Product selectProduct(Integer id){
        Product product = productDAO.selectProduct(id);
        return product;
    }

    public void  deleteProductById(Integer id){
        productDAO.deleteProductById(id);
    }


}
