package com.example.demo.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * 普通用户(CommonUser)实体类
 *
 * @author makejava
 * @since 2021-04-28 10:32:11
 */
public class CommonUser implements Serializable {
    private static final long serialVersionUID = -79129140699619699L;
    /**
     * id
     */
    private Integer id;
    /**
     * 系统账号
     */
    private String systemAccount;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 手机号
     */
    private String tel;
    /**
     * 报名活动（场）
     */
    private Integer registrationActivities;
    /**
     * 签到活动（场）
     */
    private Integer signInActivities;
    /**
     * 注册时间
     */
    private Date registrationTime;
    /**
     * 账号状态（1：正常 0：冻结）
     */
    private Integer accountStatus;
    /**
     * 密码
     */
    private String password;
    /**
     * 头像
     */
    private String headImage;
    /**
     * 身份证号
     */
    private String idNumber;
    /**
     * unionid
     */
    private String unionid;
    /**
     * 盐加密
     */
    private String salt;
    /**
     * openid
     */
    private String openid;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSystemAccount() {
        return systemAccount;
    }

    public void setSystemAccount(String systemAccount) {
        this.systemAccount = systemAccount;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Integer getRegistrationActivities() {
        return registrationActivities;
    }

    public void setRegistrationActivities(Integer registrationActivities) {
        this.registrationActivities = registrationActivities;
    }

    public Integer getSignInActivities() {
        return signInActivities;
    }

    public void setSignInActivities(Integer signInActivities) {
        this.signInActivities = signInActivities;
    }

    public Date getRegistrationTime() {
        return registrationTime;
    }

    public void setRegistrationTime(Date registrationTime) {
        this.registrationTime = registrationTime;
    }

    public Integer getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(Integer accountStatus) {
        this.accountStatus = accountStatus;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHeadImage() {
        return headImage;
    }

    public void setHeadImage(String headImage) {
        this.headImage = headImage;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getUnionid() {
        return unionid;
    }

    public void setUnionid(String unionid) {
        this.unionid = unionid;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

}
