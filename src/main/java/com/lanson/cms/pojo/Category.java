package com.lanson.cms.pojo;

/**
 * Created by fi25 on 2016/6/20.
 */
public class Category {

    private int id;
    private  String categoryName;
    private  int parentId;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }
}
