package com.entity;

import org.beetl.sql.core.annotatoin.AssignID;

import java.util.Date;

public class KkUser {
    private Long id;
    private String username;
    private String password;
    private Date createDate;

    @AssignID("simple")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "\nid:"+this.getId()+ "\nusername:" + this.getUsername() + "\npassword:" + this.getPassword();
    }
}
