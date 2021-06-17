package com.example.demo.service;

import com.example.demo.bean.ActivityDetailInfo;
import com.example.demo.entity.Activity;
import com.example.demo.entity.CommonProblem;

import java.util.List;

/**
 * 活动(Activity)表服务接口
 *
 * @author makejava
 * @since 2021-04-28 10:20:03
 */
public interface ActivityService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Activity queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Activity> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param activity 实例对象
     * @return 实例对象
     */
    Activity insert(Activity activity);

    /**
     * 修改数据
     *
     * @param activity 实例对象
     * @return 实例对象
     */
    Activity update(Activity activity);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    List<Activity> searchActivity(String keywords);
//add
    List<Activity> getAllActivity();
//--
    ActivityDetailInfo queryActivityDetail(Integer actId);

    List<Activity> getActivityList(Integer start, Integer pageSize);

    int getActivityNum();

}
