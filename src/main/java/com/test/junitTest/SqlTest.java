package com.test.junitTest;

import com.entity.KkUser;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.beetl.sql.core.SQLManager;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class SqlTest extends BaseTest {

    @Autowired
    SQLManager sqlManager;

    private static final Logger logger = LoggerFactory.getLogger(SqlTest.class);

    /*
    *测试betlsql提供的方法
    **/
    @Test
    public void insertSql() {
        KkUser user = new KkUser();
        user.setUsername("王晓峰");
        String cryptoPwd = new Md5Hash("123456","123456",2).toString();
        user.setPassword(cryptoPwd);
        user.setCreateDate(new Date());
        sqlManager.insert(user);
    }

    /*
    *测试betlsql的.md里的sql语句
    **/
    @Test
    public void selectSql() {
        KkUser query = new KkUser();
        query.setUsername("root");
        KkUser user = sqlManager.selectUnique("KkUser.findByName",query,KkUser.class);
        logger.debug(user.toString());
    }
}
