package com.shiro;

import com.entity.KkUser;
import org.apache.shiro.authc.*;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.apache.shiro.util.ByteSource;
import org.beetl.sql.core.SQLManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class ShiroRealm extends AuthenticatingRealm {

    @Autowired
    SQLManager sqlManager;

    private static final Logger logger = LoggerFactory.getLogger(ShiroRealm.class);

    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        if (null == username) {
            username = "";
        }
        KkUser user;
        String password = "";
        try {
            KkUser query = new KkUser();
            query.setUsername(username);
            user = sqlManager.selectUnique("kkUser.findByName",query,KkUser.class);
            password = user.getPassword();
        } catch (Exception e) {
            password = "";
        }
        ByteSource salt = ByteSource.Util.bytes(username);
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(username,password,salt,getName());
        return info;
    }
}
