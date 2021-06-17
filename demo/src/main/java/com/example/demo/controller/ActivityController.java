package com.example.demo.controller;

import com.example.demo.bean.ActivityDetailInfo;
import com.example.demo.bean.UserOrderInfo;
import com.example.demo.entity.Activity;
import com.example.demo.service.ActivityService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/**
 * 活动(Activity)表控制层
 *
 * @author makejava
 * @since 2021-04-28 10:20:03
 */
@RestController
@RequestMapping("/activity")
public class ActivityController {
    /**
     * 服务对象
     */
    @Resource
    private ActivityService activityService;

    @CrossOrigin
    @GetMapping("/activity/list")
    public List<Activity> searchActivity(String filter4KeywordsOrActivityTitle) {
        List<Activity> list = new ArrayList<Activity>();
        if (filter4KeywordsOrActivityTitle == null || filter4KeywordsOrActivityTitle == "") {
            return list;
        }
        String key = "%" + filter4KeywordsOrActivityTitle + "%";
        list = activityService.searchActivity(key);
        System.out.println(list);
        return list;
    }

    @CrossOrigin
    @GetMapping("/activity/detail")
    public ActivityDetailInfo queryActivityDetail(Integer actId) {
        if (actId == null) {
            return null;
        }

        ActivityDetailInfo detailInfo = activityService.queryActivityDetail(actId);

        return detailInfo;
    }

    @CrossOrigin
    @GetMapping("/activity/actList")
    public List<Activity> getActivityList(Integer pageNum, Integer pageSize) {
        List<Activity> list = new ArrayList<Activity>();
        if (pageNum == null || pageSize == null) {
            return list;
        }

        pageSize = (pageSize <= 0) ? 1 : pageSize;
        Integer start = (pageNum - 1)*pageSize;
        list = activityService.getActivityList(start, pageSize);

        return list;
    }

    @CrossOrigin
    @GetMapping("/activity/actNum")
    public int getActivityNum() {

        int num = activityService.getActivityNum();

        return num;
    }
//    add
    @CrossOrigin
    @GetMapping("/activity/getAll")
    public List<Activity> getAllActivity() {
        return activityService.getAllActivity();
    }
}
