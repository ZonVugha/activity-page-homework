package com.example.demo.entity;

import java.io.Serializable;

/**
 * 活动订单(ActiveOrder)实体类
 *
 * @author makejava
 * @since 2021-04-28 10:29:01
 */
public class ActiveOrder implements Serializable {
    private static final long serialVersionUID = 802513039581972012L;
    /**
     * id
     */
    private Integer id;
    /**
     * 状态（1：待审核 2：待参加 3：已检票 4：已取消）
     */
    private Integer status;
    /**
     * 活动id
     */
    private Integer activityId;
    /**
     * 普通用户id
     */
    private Integer commonUserId;
//    add
    /**
     * 图像
     */
    private String activityPosters;
//    --
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Integer getCommonUserId() {
        return commonUserId;
    }

    public void setCommonUserId(Integer commonUserId) {
        this.commonUserId = commonUserId;
    }
//    add--
    public String getActivityPosters() {
        return activityPosters;
    }

    public void setActivityPosters(String activityPosters) {
        this.activityPosters = activityPosters;
    }
//--
}
