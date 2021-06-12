package com.example.demo.service;

import com.example.demo.entity.Activity;
import com.example.demo.entity.Advertising;

import java.util.List;

/**
 * 广告(Advertising)表服务接口
 *
 * @author makejava
 * @since 2021-04-28 10:43:23
 */
public interface AdvertisingService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Advertising queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Advertising> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param advertising 实例对象
     * @return 实例对象
     */
    Advertising insert(Advertising advertising);

    /**
     * 修改数据
     *
     * @param advertising 实例对象
     * @return 实例对象
     */
    Advertising update(Advertising advertising);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    List<Activity> queryAdInfoByType(int type);

}
