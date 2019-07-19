package com.mall.impl;

import com.mall.UserUpdate;
import com.mall.UserUpdateService;
import com.mall.user;

public class UserUpdateServiceimpl implements UserUpdateService {
    @Override
    public boolean userupdate(user user, String name) {
        UserUpdate up=new UserUpdateimpl();
        return up.userinfupdate(user,name);
    }
}
