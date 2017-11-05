package com.dao.impl;

import com.dao.KkUserDao;
import com.entity.KkUser;
import org.beetl.sql.core.SQLManager;
import org.springframework.beans.factory.annotation.Autowired;

public class KkUserDaoImpl implements KkUserDao {

    @Autowired
    SQLManager sqlManager;

    public KkUser findByName(String userName) {
        KkUser query = new KkUser();
        query.setUsername(userName);
        KkUser user = sqlManager.selectUnique("KkUser.findByName",query,KkUser.class);
        return user;
    }
}
