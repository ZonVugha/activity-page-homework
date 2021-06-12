package com.example.demo.bean;

public class UserOrderInfo {
    protected String activityTitle;
//    add
    protected String activityPosters;
//    --
    protected Integer status;
    protected String releaseTime;
    protected String addr;
    protected Integer id;
    protected Integer activity_id;

    public Integer getActivity_id() {
        return activity_id;
    }

    public void setActivity_id(Integer activity_id) {
        this.activity_id = activity_id;
    }
//add--
    public String getActivityPosters() {
		return activityPosters;
	}
    public void setActivityPosters(String activityPosters) {
		this.activityPosters = activityPosters;
	}
//    --
    public Integer getId() {
        return id;
    }

    public void setId() {
        this.id = id;
    }
    public String getActivityTitle() {
        return activityTitle;
    }

    public void setActivityTitle(String activityTitle) {
        this.activityTitle = activityTitle;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(String releaseTime) {
        this.releaseTime = releaseTime;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }
}
