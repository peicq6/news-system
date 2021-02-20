package com.news.system.util;

public enum SystemConstantEnum {

    /**
     * 状态 1正常 2冻结
     */
    STATUS_NORMAL_1("1"),

    /**
     * 状态 1正常 2冻结
     */
    STATUS_NORMAL_2("2");

    private final String code;

    private SystemConstantEnum(String code){
        this.code = code;
    }

    public String getCode(){
       return this.code;
    }
}
