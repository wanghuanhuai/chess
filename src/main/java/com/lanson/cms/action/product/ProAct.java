package com.lanson.cms.action.product;

import com.lanson.cms.pojo.ImageInfo;
import com.lanson.cms.pojo.Product;
import com.lanson.cms.pojo.model.ImageInfoModel;
import com.lanson.cms.service.ImageService;
import com.lanson.cms.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by fi25 on 2016/6/20.
 */
@Controller
@RequestMapping(value =  "product")
public class ProAct {
@Autowired
  private ProductService  productService;
@Autowired
 private ImageService imageService;


    @RequestMapping(value = "/saveOrUpdate.do")
    public  void ProSaveOrUpdate(HttpServletResponse response,Product product,Integer[] pro_categories,Integer productId,ImageInfoModel imageInfos,String deleteImages ) throws IOException {

         if(productId!=null){
             product.setId(productId);
         }
        if(deleteImages!=null&&!deleteImages.equals("")){
            imageService.deleteImages(deleteImages);
        }

        List<ImageInfo> images=imageInfos.getImageInfos();
        productService.saveProduct(product,pro_categories,images);
         response.sendRedirect("page.do");
    }
}
