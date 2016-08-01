package com.lanson.cms.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by fi25 on 2016/6/20.
 */
public class  tool {

    public static String getCurDate(){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(new Date());
    }

}
