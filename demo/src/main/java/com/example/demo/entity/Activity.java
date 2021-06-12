package com.example.demo.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * 活动(Activity)实体类
 *
 * @author makejava
 * @since 2021-04-28 10:20:03
 */
public class Activity implements Serializable {
    private static final long serialVersionUID = 731911476815958669L;
    /**
     * id
     */
    private Integer id;
    /**
     * 活动海报
     */
    private String activityPosters;
    /**
     * 活动标题
     */
    private String activityTitle;
    /**
     * 活动编号
     */
    private String activityNumber;
    /**
     * 活动类型id
     */
    private Integer activityTypeId;
    /**
     * 关键词
     */
    private String keywords;
    /**
     * 发布时间
     */
    private Date releaseTime;
    /**
     * 审核状态（0：草稿 1：待审核 2：报名中 3：审核失败 4：待举办 5：进行中 6：已结束）
     */
    private Integer checkStatus;
    /**
     * 审核时间
     */
    private Date checkTime;
    /**
     * 审核人联系方式
     */
    private String checkPersonContact;
    /**
     * 审核备注
     */
    private String checkRemark;
    /**
     * 报名开始时间
     */
    private Date registrationStartTime;
    /**
     * 活动开始时间
     */
    private Date activityStartTime;
    /**
     * 地址
     */
    private String addr;
    /**
     * 人数限制
     */
    private Integer personLimit;
    /**
     * 报名费用
     */
    private Double registrationFee;
    /**
     * 客服微信二维码
     */
    private String wxCustomerCode;
    /**
     * 收款方式
     */
    private String paymentMethod;
    /**
     * 报名结束时间
     */
    private Date registrationEndTime;
    /**
     * 活动结束时间
     */
    private Date activityEndTime;
    /**
     * 省
     */
    private String province;
    /**
     * 市
     */
    private String city;
    /**
     * 是否需要审核（1：需要 0：不需要）
     */
    private Integer checkNeed;
    /**
     * 入驻单位id
     */
    private Integer enterCompanyId;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getActivityPosters() {
        return activityPosters;
    }

    public void setActivityPosters(String activityPosters) {
        this.activityPosters = activityPosters;
    }

    public String getActivityTitle() {
        return activityTitle;
    }

    public void setActivityTitle(String activityTitle) {
        this.activityTitle = activityTitle;
    }

    public String getActivityNumber() {
        return activityNumber;
    }

    public void setActivityNumber(String activityNumber) {
        this.activityNumber = activityNumber;
    }

    public Integer getActivityTypeId() {
        return activityTypeId;
    }

    public void setActivityTypeId(Integer activityTypeId) {
        this.activityTypeId = activityTypeId;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = checkTime;
    }

    public String getCheckPersonContact() {
        return checkPersonContact;
    }

    public void setCheckPersonContact(String checkPersonContact) {
        this.checkPersonContact = checkPersonContact;
    }

    public String getCheckRemark() {
        return checkRemark;
    }

    public void setCheckRemark(String checkRemark) {
        this.checkRemark = checkRemark;
    }

    public Date getRegistrationStartTime() {
        return registrationStartTime;
    }

    public void setRegistrationStartTime(Date registrationStartTime) {
        this.registrationStartTime = registrationStartTime;
    }

    public Date getActivityStartTime() {
        return activityStartTime;
    }

    public void setActivityStartTime(Date activityStartTime) {
        this.activityStartTime = activityStartTime;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public Integer getPersonLimit() {
        return personLimit;
    }

    public void setPersonLimit(Integer personLimit) {
        this.personLimit = personLimit;
    }

    public Double getRegistrationFee() {
        return registrationFee;
    }

    public void setRegistrationFee(Double registrationFee) {
        this.registrationFee = registrationFee;
    }

    public String getWxCustomerCode() {
        return wxCustomerCode;
    }

    public void setWxCustomerCode(String wxCustomerCode) {
        this.wxCustomerCode = wxCustomerCode;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public Date getRegistrationEndTime() {
        return registrationEndTime;
    }

    public void setRegistrationEndTime(Date registrationEndTime) {
        this.registrationEndTime = registrationEndTime;
    }

    public Date getActivityEndTime() {
        return activityEndTime;
    }

    public void setActivityEndTime(Date activityEndTime) {
        this.activityEndTime = activityEndTime;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getCheckNeed() {
        return checkNeed;
    }

    public void setCheckNeed(Integer checkNeed) {
        this.checkNeed = checkNeed;
    }

    public Integer getEnterCompanyId() {
        return enterCompanyId;
    }

    public void setEnterCompanyId(Integer enterCompanyId) {
        this.enterCompanyId = enterCompanyId;
    }

}
