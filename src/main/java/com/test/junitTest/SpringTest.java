package com.test.junitTest;

import com.service.TestService;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class SpringTest extends BaseTest {

    private static final Logger logger = LoggerFactory.getLogger(SqlTest.class);

    @Autowired
    private TestService testService;

    @Test
    public void getUser() {
        String page =  testService.test();
        logger.debug("page==={}",page);
    }
}
