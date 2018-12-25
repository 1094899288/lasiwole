package com.xuchaoyue.second.user.util;

import java.util.List;
import java.util.Map;

public class FormatEmpty {

    public static boolean isEmpty(Object str) {
        if (str == null || isEmpty(str.toString())) {
            return true;
        }
        return false;
    }

    /**
     * 鍒ゆ柇鏄惁涓虹┖锛坣ull||length==0锛�
     * 
     * @param str
     * @return false涓嶄负绌猴紝true涓虹┖
     */
    public static boolean isEmpty(String str) {
        if (str == null || str.trim().length() == 0) {// "".equals(str)
            return true;
        }
        return false;
    }

    /**
     * 鍒ゆ柇鏄惁涓虹┖锛坣ull||isEmpty锛�
     * 
     * @param map
     * @return false涓嶄负绌猴紝true涓虹┖
     */
    public static boolean isEmpty(Map<?, ?> map) {
        if (map == null || map.isEmpty()) {
            return true;
        }
        return false;
    }

    /**
     * 鍒ゆ柇鏄惁涓虹┖锛坣ull||isEmpty锛�
     * 
     * @param list
     * @return false涓嶄负绌猴紝true涓虹┖
     */
    public static boolean isEmpty(List<?> list) {
        if (list == null || list.isEmpty()) {
            return true;
        }
        return false;
    }

    /**
     * 鍒ゆ柇鏄惁涓虹┖锛坣ull||length == 0锛�
     * 
     * @param array
     * @return false涓嶄负绌猴紝true涓虹┖
     */
    public static boolean isEmpty(Object[] array) {
        if (array == null || array.length == 0) {
            return true;
        }
        return false;
    }

}
