package com.example.demo.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * 广告(Advertising)实体类
 *
 * @author makejava
 * @since 2021-04-28 10:43:22
 */
public class Advertising implements Serializable {
    private static final long serialVersionUID = 333810464758248039L;
    /**
     * id
     */
    private Integer id;
    /**
     * 类型（1：pc端 0：移动端）
     */
    private Integer type;
    /**
     * 广告图
     */
    private String advertisingPhoto;
    /**
     * 广告标题
     */
    private String advertisingTitle;
    /**
     * 排序
     */
    private Integer rank;
    /**
     * 链接
     */
    private String link;
    /**
     * 活动编号
     */
    private String activityNumber;
    /**
     * 发布人id
     */
    private Integer releasePersonId;
    /**
     * 发布人姓名
     */
    private String releasePersonName;
    /**
     * 发布时间
     */
    private Date releaseTime;
    /**
     * 删除状态（1：正常 0：已删除）
     */
    private Integer delStatus;
    /**
     * 图文详情
     */
    private String graphicDetails;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getAdvertisingPhoto() {
        return advertisingPhoto;
    }

    public void setAdvertisingPhoto(String advertisingPhoto) {
        this.advertisingPhoto = advertisingPhoto;
    }

    public String getAdvertisingTitle() {
        return advertisingTitle;
    }

    public void setAdvertisingTitle(String advertisingTitle) {
        this.advertisingTitle = advertisingTitle;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getActivityNumber() {
        return activityNumber;
    }

    public void setActivityNumber(String activityNumber) {
        this.activityNumber = activityNumber;
    }

    public Integer getReleasePersonId() {
        return releasePersonId;
    }

    public void setReleasePersonId(Integer releasePersonId) {
        this.releasePersonId = releasePersonId;
    }

    public String getReleasePersonName() {
        return releasePersonName;
    }

    public void setReleasePersonName(String releasePersonName) {
        this.releasePersonName = releasePersonName;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public Integer getDelStatus() {
        return delStatus;
    }

    public void setDelStatus(Integer delStatus) {
        this.delStatus = delStatus;
    }

    public String getGraphicDetails() {
        return graphicDetails;
    }

    public void setGraphicDetails(String graphicDetails) {
        this.graphicDetails = graphicDetails;
    }

}
