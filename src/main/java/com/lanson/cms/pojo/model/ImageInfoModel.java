package com.lanson.cms.pojo.model;

import com.lanson.cms.pojo.ImageInfo;

import java.util.List;

/**
 * Created by fi25 on 2016/6/20.
 */
public class ImageInfoModel {
private List<ImageInfo> imageInfos;

    public List<ImageInfo> getImageInfos() {
        return imageInfos;
    }

    public void setImageInfos(List<ImageInfo> imageInfos) {
        this.imageInfos = imageInfos;
    }

    public ImageInfoModel(List<ImageInfo> imageInfos) {
        super();
        this.imageInfos = imageInfos;
    }

    public ImageInfoModel() {
        super();
    }
}
