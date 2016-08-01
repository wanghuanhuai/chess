package com.lanson.front.service;

import com.lanson.cms.dao.ImageInfoDAO;
import com.lanson.cms.dao.ProductDAO;
import com.lanson.cms.pojo.ImageInfo;
import com.lanson.cms.pojo.Product;
import com.lanson.front.util.Common;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fi25 on 2016/6/28.
 */
@Service
public class IndexService {
@Autowired
  private ProductDAO productDAO;
@Autowired
  private ImageInfoDAO imageInfoDAO;

    public String indexProductList(int page,Integer cateId){
        int pageNumber =  Common.INDEX_PAGE_COUNT;
        int start = (page-1)*pageNumber + 1 ;
        int end  =page*pageNumber;
        List<Product> products = productDAO.indexSelectProducts(start,end);
        for(int i=0;i<products.size();i++) {
           if(productDAO.isExistCategory(products.get(i).getId(),cateId)==0){
               products.remove(i);
               i=i-1;
           }else{
               List<ImageInfo> imageInfos= imageInfoDAO.selectMinImage(products.get(i).getId());
               if(imageInfos!=null){
                   products.get(i).setImageInfogs(imageInfos);
               }
           }
        }
        JSONArray arr=JSONArray.fromObject(products);
       return arr.toString();
    }

    /**
     * 查询最新产品
     * @return
     */
    public  List<Product> indexNewList(){

        List<Product> products = productDAO.selectProductsDesc();
        for(int i=0;i<products.size();i++) {


                List<ImageInfo> imageInfos= imageInfoDAO.selectMinImage(products.get(i).getId());
                if(imageInfos!=null){
                    products.get(i).setImageInfogs(imageInfos);

               }
        }


        return  products;
    }

    /**
     * 查询评价最多的产品
     * @return
     */
    public  List<Product> indexHotList(){

        List<Product> products = productDAO.selectProductsByTopReview();
        for(int i=0;i<products.size();i++) {
            List<ImageInfo> imageInfos= imageInfoDAO.selectMinImage(products.get(i).getId());
            if(imageInfos!=null){
                products.get(i).setImageInfogs(imageInfos);

            }
        }


        return  products;
    }








    public int productCount(Integer cateId){

        List<Product> products = productDAO.indexSelectCount();

        for(int i=0;i<products.size();i++) {
            if(productDAO.isExistCategory(products.get(i).getId(),cateId)==0){
                products.remove(i);
                i=i-1;
            }else{
                List<ImageInfo> imageInfos= imageInfoDAO.selectMinImage(products.get(i).getId());
                if(imageInfos!=null){
                    products.get(i).setImageInfogs(imageInfos);
                }
            }


        }
        return (products.size()-1)/ Common.INDEX_PAGE_COUNT+1;
    }



}
