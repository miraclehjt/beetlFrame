package com.dao;

import com.entity.KkUser;

public interface KkUserDao {

    public KkUser findByName(String userName);
}
