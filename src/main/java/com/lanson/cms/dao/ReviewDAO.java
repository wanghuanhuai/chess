package com.lanson.cms.dao;

import com.lanson.cms.pojo.Review;
import com.lanson.cms.pojo.ShopUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fi25 on 2016/7/1.
 */
public interface ReviewDAO {
   void addReview(Review review);

   List<Review> selectListPage(@Param("start")Integer start,@Param("end")Integer end,@Param("productId")Integer productId);
   int CountByProductId(@Param("productId")int productId);
   Float selectTotalRateByProductId(@Param("productId")int productId);
}
