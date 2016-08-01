package com.lanson.cms.dao;

import com.lanson.cms.pojo.ImageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fi25 on 2016/6/15.
 */
public interface ImageInfoDAO {


     void  save(ImageInfo imageInfo);
     void updateBatch(@Param("list")List<ImageInfo> list,@Param("productId")int productId);
     List<ImageInfo> selectByproductId(@Param("productId")Integer productId);

    List<ImageInfo>     selectMinImage(@Param("productId")int productId);

    void  deleteImage(@Param("array")String[] array);

}
