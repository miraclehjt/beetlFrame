package com.test.junitTest;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:config/spring/applicationContext.xml","classpath*:config/spring/spring-mvc.xml"})

public class BaseTest {

}
