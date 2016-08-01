package com.lanson.cms.action.product;

import com.lanson.cms.pojo.ImageInfo;
import com.lanson.cms.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by fi25 on 2016/6/23.
 */
@Controller
@RequestMapping(value = "product")
public class ImageAct {
    @Autowired
    private ImageService imageService;

    @RequestMapping(value = "/upload.do")
    public  void imageUpload(HttpServletRequest request, HttpServletResponse response) throws IOException {

        ImageInfo imageInfo = new ImageInfo();



        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");
        /**构建图片保存的目录**/
        String logoPathDir = "/upload/images/"+ dateformat.format(new Date());

        /**得到图片保存目录的真实路径**/
        String logoRealPathDir = request.getSession().getServletContext().getRealPath(logoPathDir);
        /**根据真实路径创建目录**/
        File logoSaveFile = new File(logoRealPathDir);
        if(!logoSaveFile.exists())
            logoSaveFile.mkdirs();
        /**页面控件的文件流**/
        MultipartFile multipartFile = multipartRequest.getFile("file");
        /**获取文件的后缀**/
        String suffix = multipartFile.getOriginalFilename().substring
                (multipartFile.getOriginalFilename().lastIndexOf("."));
//        /**使用UUID生成文件名称**/
//        String logImageName = UUID.randomUUID().toString()+ suffix;//构建文件名称
        String logImageName = multipartFile.getOriginalFilename();



        /**拼成完整的文件保存路径加文件**/
        String fileName = logoRealPathDir + File.separator   + logImageName;



        File file = new File(fileName);
        try {
            multipartFile.transferTo(file);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        imageInfo.setImage_location(logoPathDir+"/"+logImageName);
        imageService.saveOrUpdate(imageInfo);
        response.setContentType("text/json;charset=UTF-8");//
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.getWriter().write("{\"result\":\"OK\",\"id\":\""+imageInfo.getId()+"\",\"location\":\""+imageInfo.getImage_location()+"\"}");

    }
}
