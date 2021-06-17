package com.example.demo.dao;

import com.example.demo.bean.ActivityDetailInfo;
import com.example.demo.entity.Activity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 活动(Activity)表数据库访问层
 *
 * @author makejava
 * @since 2021-04-28 10:20:03
 */
public interface ActivityDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Activity queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Activity> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param activity 实例对象
     * @return 对象列表
     */
    List<Activity> queryAll(Activity activity);

    /**
     * 新增数据
     *
     * @param activity 实例对象
     * @return 影响行数
     */
    int insert(Activity activity);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Activity> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Activity> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Activity> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Activity> entities);

    /**
     * 修改数据
     *
     * @param activity 实例对象
     * @return 影响行数
     */
    int update(Activity activity);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    List<Activity> searchActivity(String keywords);
//add
	List<Activity> getAllActivity();
//--
    ActivityDetailInfo queryActivityDetail(Integer actId);

    List<Activity> getActivityList(Integer start, Integer pageSize);

    int getActivityNum();


}

