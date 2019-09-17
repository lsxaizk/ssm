package com.lsx.dao;

import org.apache.ibatis.annotations.Select;

public interface UserDao {

    @Select("select count(*) from user where name = #{name}")
    int checkUserName(String name);

}
