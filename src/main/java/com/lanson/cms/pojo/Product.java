package com.lanson.cms.pojo;

import java.util.List;

/**
 * 商城产品
 * Created by fi25 on 2016/6/15.
 */
public class Product {
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public char getProStatus() {
        return proStatus;
    }

    public void setProStatus(char proStatus) {
        this.proStatus = proStatus;
    }


    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDes() {
        return productDes;
    }

    public void setProductDes(String productDes) {
        this.productDes = productDes;
    }

    public String getProductShortDes() {
        return productShortDes;
    }

    public void setProductShortDes(String productShortDes) {
        this.productShortDes = productShortDes;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }


    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    private int id;
    private int count;
    private String productName;
    private String  productDes;
    private String  productShortDes;
    private String createDate;
    private char proStatus;
    private List<Category> categories;
    private List<ImageInfo> imageInfogs;

    public List<ImageInfo> getImageInfogs() {
        return imageInfogs;
    }

    public void setImageInfogs(List<ImageInfo> imageInfogs) {
        this.imageInfogs = imageInfogs;
    }
}
