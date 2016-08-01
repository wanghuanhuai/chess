package com.lanson.front.service;

import com.lanson.cms.dao.ProductDAO;
import com.lanson.cms.dao.ReviewDAO;
import com.lanson.cms.pojo.Product;
import com.lanson.cms.pojo.Review;
import com.lanson.cms.pojo.ShopUser;
import com.lanson.cms.util.tool;
import com.lanson.front.util.Common;

import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * Created by fi25 on 2016/7/1.
 */
@Controller
public class ShopItemService {
   @Autowired
   private ProductDAO productDAO;
   @Autowired
   private ReviewDAO reviewDAO;

    /**
     * 根据ID查询
     * @param id
     * @return
     */
    public Product selectProductImagesById(Integer id){
      return   productDAO.selectProductImagesById(id);
    }

    /**
     * 保存评价
     * @param review
     */
    public  void   addReview( SecurityContextImpl securityContextImpl,Review review){
        review.setReviewTime(tool.getCurDate());
        review.setUserName(securityContextImpl.getAuthentication().getName());
        reviewDAO.addReview(review);
    }

    /**
     * 评论分页查询
     * @param page
     * @param productId
     * @return
     */

    public  String  ReviewListPage(Integer page,Integer productId){
        int pageNumber =  Common.REVIEW_PAGE_COUNT;
        int start = (page-1)*pageNumber + 1 ;
        int end  =page*pageNumber;
        List<Review> reviews =reviewDAO.selectListPage(start,end,productId);
        JSONArray objectArray = JSONArray.fromObject(reviews);
        return objectArray.toString();
    }

    /**
     * 页数
     * @param productId
     * @return
     */
    public int pageCountByProductId(int productId){
        int count = reviewDAO.CountByProductId(productId);


       return (count-1)/ Common.REVIEW_PAGE_COUNT+1;
    }

    /**
     * 总数
     * @param productId
     * @return
     */
    public int countByProductId(int productId){
        return reviewDAO.CountByProductId(productId);
    }

    /**
     * 总分
     * @param productId
     * @return
     */
    public float averageRate(int productId){
        if(reviewDAO.selectTotalRateByProductId(productId)==null){
            return  0;
        }
        return  reviewDAO.selectTotalRateByProductId(productId);
    }

}
