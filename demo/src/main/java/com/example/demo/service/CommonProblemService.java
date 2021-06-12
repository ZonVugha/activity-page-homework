package com.example.demo.service;

import com.example.demo.entity.CommonProblem;

import java.util.List;

/**
 * 常见问题(CommonProblem)表服务接口
 *
 * @author makejava
 * @since 2021-04-28 10:22:42
 */
public interface CommonProblemService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    CommonProblem queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<CommonProblem> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param commonProblem 实例对象
     * @return 实例对象
     */
    CommonProblem insert(CommonProblem commonProblem);

    /**
     * 修改数据
     *
     * @param commonProblem 实例对象
     * @return 实例对象
     */
    CommonProblem update(CommonProblem commonProblem);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    List<CommonProblem> queryAllProblems();

}
