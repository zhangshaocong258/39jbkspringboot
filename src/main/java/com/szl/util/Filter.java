package com.szl.util;

import com.hankcs.hanlp.seg.common.Term;

import java.util.*;

/**
 * Created by zsc on 2016/12/17.
 * 过滤男女特有的疾病
 */
public class Filter {
    private static final Set<String> MALE = new HashSet<>();
    private static final Set<String> FEMALE = new HashSet<>();
    public static void initFilter() {
        FEMALE.add("月经失调");
        FEMALE.add("月经少");
        FEMALE.add("月经过多");
        FEMALE.add("闭经");
        FEMALE.add("白带多");
        MALE.add("遗精");
    }

    public static boolean containsMale(String disease) {
        return MALE.contains(disease);
    }

    public static boolean containsFemale(String disease) {
        return FEMALE.contains(disease);
    }

}
