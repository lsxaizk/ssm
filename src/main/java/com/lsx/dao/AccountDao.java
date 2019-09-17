package com.lsx.dao;

import com.lsx.domain.Account;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 账户dao接口
 * */
public interface AccountDao {

    //查询所有账户

    @Select("select * from account")
    public List<Account> findAll();

    //保存账户信息

    @Insert("insert into account(name,money) values (#{name},#{money})")
    public void saveAccount(Account account);
}
