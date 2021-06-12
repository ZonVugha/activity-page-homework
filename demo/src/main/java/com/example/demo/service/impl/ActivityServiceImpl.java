package com.example.demo.service.impl;

import com.example.demo.bean.ActivityDetailInfo;
import com.example.demo.entity.Activity;
import com.example.demo.dao.ActivityDao;
import com.example.demo.service.ActivityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 活动(Activity)表服务实现类
 *
 * @author makejava
 * @since 2021-04-28 10:20:03
 */
@Service("activityService")
public class ActivityServiceImpl implements ActivityService {
    @Resource
    private ActivityDao activityDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Activity queryById(Integer id) {
        return this.activityDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Activity> queryAllByLimit(int offset, int limit) {
        return this.activityDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param activity 实例对象
     * @return 实例对象
     */
    @Override
    public Activity insert(Activity activity) {
        this.activityDao.insert(activity);
        return activity;
    }

    /**
     * 修改数据
     *
     * @param activity 实例对象
     * @return 实例对象
     */
    @Override
    public Activity update(Activity activity) {
        this.activityDao.update(activity);
        return this.queryById(activity.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.activityDao.deleteById(id) > 0;
    }

    @Override
    public List<Activity> searchActivity(String keywords) {
        return activityDao.searchActivity(keywords);
    }

    @Override
    public ActivityDetailInfo queryActivityDetail(Integer actId) {
        return activityDao.queryActivityDetail(actId);
    }

    @Override
    public List<Activity> getActivityList(Integer start, Integer pageSize) {
        return activityDao.getActivityList(start, pageSize);
    }

    @Override
    public int getActivityNum() {
        return activityDao.getActivityNum();
    }
}
