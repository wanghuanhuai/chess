package com.lanson.cms.pojo;

/**
 * Created by fi25 on 2016/6/20.
 */
public class ImageInfo {

    private  int id;
    private String imageName;
    private  int imageSort;
    private int productId;
    private char imageType;
    private String image_location;


    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public char getImageType() {
        return imageType;
    }

    public void setImageType(char imageType) {
        this.imageType = imageType;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public int getImageSort() {
        return imageSort;
    }

    public void setImageSort(int imageSort) {
        this.imageSort = imageSort;
    }


    public String getImage_location() {
        return image_location;
    }

    public void setImage_location(String image_location) {
        this.image_location = image_location;
    }
}
