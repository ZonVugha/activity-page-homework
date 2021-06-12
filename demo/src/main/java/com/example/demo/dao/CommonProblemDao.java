package com.example.demo.dao;

import com.example.demo.entity.CommonProblem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 常见问题(CommonProblem)表数据库访问层
 *
 * @author makejava
 * @since 2021-04-28 10:22:42
 */
public interface CommonProblemDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    CommonProblem queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<CommonProblem> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param commonProblem 实例对象
     * @return 对象列表
     */
    List<CommonProblem> queryAll(CommonProblem commonProblem);

    /**
     * 新增数据
     *
     * @param commonProblem 实例对象
     * @return 影响行数
     */
    int insert(CommonProblem commonProblem);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<CommonProblem> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<CommonProblem> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<CommonProblem> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<CommonProblem> entities);

    /**
     * 修改数据
     *
     * @param commonProblem 实例对象
     * @return 影响行数
     */
    int update(CommonProblem commonProblem);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    List<CommonProblem> queryAllProblems();

}

