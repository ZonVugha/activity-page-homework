package com.example.demo.dao;

import com.example.demo.entity.CommonUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 普通用户(CommonUser)表数据库访问层
 *
 * @author makejava
 * @since 2021-04-28 10:32:12
 */
public interface CommonUserDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    CommonUser queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<CommonUser> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param commonUser 实例对象
     * @return 对象列表
     */
    List<CommonUser> queryAll(CommonUser commonUser);

    /**
     * 新增数据
     *
     * @param commonUser 实例对象
     * @return 影响行数
     */
    int insert(CommonUser commonUser);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<CommonUser> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<CommonUser> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<CommonUser> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<CommonUser> entities);

    /**
     * 修改数据
     *
     * @param commonUser 实例对象
     * @return 影响行数
     */
    int update(CommonUser commonUser);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}

