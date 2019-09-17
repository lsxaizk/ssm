package com.lsx.service.impl;

import com.lsx.domain.Account;
import com.lsx.service.AccountService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("accountService")
public class AccountServiceImpl implements AccountService {

    @Override
    public List<Account> findAll() {
        System.out.println("业务层，查询账户");
        return null;
    }
    @Override
    public void saveAccount(Account account) {
        System.out.println("业务层，保存账户");
    }
}
