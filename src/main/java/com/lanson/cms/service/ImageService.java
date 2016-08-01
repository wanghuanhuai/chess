package com.lanson.cms.service;

import com.lanson.cms.dao.ImageInfoDAO;
import com.lanson.cms.pojo.ImageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fi25 on 2016/6/24.
 */
@Service
public class ImageService {
    @Autowired
    private   ImageInfoDAO imageInfoDAO;

    public  void saveOrUpdate(ImageInfo imageInfo){
       imageInfoDAO.save(imageInfo);
       // System.out.println(imageInfo.getId());
    }
    public List<ImageInfo> selectImageById(Integer productId){
        return imageInfoDAO.selectByproductId(productId);
    }


    public  void deleteImages(String deleteImage){
        String[] array=deleteImage.split(",");

        ArrayList<String> list = new ArrayList<String>();

        for(int i=0; i<array.length;i++){
            if(!array[i].equals("undefined") ){
                list.add(array[i]);
                System.out.println(array[i]);
            }
        }
        if(list.size()<1){
        return;
        }
       String[] array1=list.toArray(new String[list.size()]);
        imageInfoDAO.deleteImage(array1);
    }


}
