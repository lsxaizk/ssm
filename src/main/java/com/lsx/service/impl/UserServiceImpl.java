package com.lsx.service.impl;

import com.lsx.dao.UserDao;
import com.lsx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public int checkUserName(String name) {
        int i = userDao.checkUserName(name);

        return i;
    }
}
