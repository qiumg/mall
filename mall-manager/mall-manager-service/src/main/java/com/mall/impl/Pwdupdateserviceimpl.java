package com.mall.impl;

import com.mall.Pwdupdate;
import com.mall.Pwdupdateservice;

public class Pwdupdateserviceimpl implements Pwdupdateservice {
    Pwdupdate p=new Pwdupdateimpl();
    @Override
    public boolean gengxin(int id, String oldpwd, String newpwd) {
        boolean b0=p.yanzheng(id,oldpwd);
        if(b0){
            return p.xiugai(id,newpwd);
        }
        return false;
    }
}
