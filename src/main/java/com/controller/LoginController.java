package com.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/dologin")
    public String doLogin(HttpServletRequest request) {
        String msg = "";
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        Subject subject = SecurityUtils.getSubject();
        if (!subject.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
            token.setRememberMe(true);
            try {
                subject.login(token);
                return "home";
            } catch (IncorrectCredentialsException e) {
                msg = "登录密码错误. Password for account " + token.getPrincipal() + " was incorrect.";
                logger.warn(msg);
                return "redirect:/login.jsp";
            } catch (ExcessiveAttemptsException e) {
                msg = "登录失败次数过多";
                logger.warn(msg);
                return "redirect:/login.jsp";
            } catch (LockedAccountException e) {
                msg = "帐号已被锁定. The account for username " + token.getPrincipal() + " was locked.";
                logger.warn(msg);
                return "redirect:/login.jsp";
            } catch (DisabledAccountException e) {
                msg = "帐号已被禁用. The account for username " + token.getPrincipal() + " was disabled.";
                logger.warn(msg);
                return "redirect:/login.jsp";
            } catch (ExpiredCredentialsException e) {
                msg = "帐号已过期. the account for username " + token.getPrincipal() + "  was expired.";
                logger.warn(msg);
                return "redirect:/login.jsp";
            } catch (UnknownAccountException e) {
                msg = "帐号不存在. There is no user with username of " + token.getPrincipal();
                logger.warn(msg);
                return "redirect:/login.jsp";
            } catch (UnauthorizedException e) {
                msg = "您没有得到相应的授权！" + e.getMessage();
                logger.warn(msg);
                return "redirect:/login.jsp";
            } catch (Exception e) {
                msg = "请输入用户名或密码！" + e.getMessage();
                logger.warn(msg);
                return "redirect:/login.jsp";
            }
        } else {
            return "home";
        }
    }
}
