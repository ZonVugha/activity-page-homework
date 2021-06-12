package com.example.demo.service.impl;

import com.example.demo.entity.Activity;
import com.example.demo.entity.Advertising;
import com.example.demo.dao.AdvertisingDao;
import com.example.demo.service.AdvertisingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 广告(Advertising)表服务实现类
 *
 * @author makejava
 * @since 2021-04-28 10:43:23
 */
@Service("advertisingService")
public class AdvertisingServiceImpl implements AdvertisingService {
    @Resource
    private AdvertisingDao advertisingDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Advertising queryById(Integer id) {
        return this.advertisingDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Advertising> queryAllByLimit(int offset, int limit) {
        return this.advertisingDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param advertising 实例对象
     * @return 实例对象
     */
    @Override
    public Advertising insert(Advertising advertising) {
        this.advertisingDao.insert(advertising);
        return advertising;
    }

    /**
     * 修改数据
     *
     * @param advertising 实例对象
     * @return 实例对象
     */
    @Override
    public Advertising update(Advertising advertising) {
        this.advertisingDao.update(advertising);
        return this.queryById(advertising.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.advertisingDao.deleteById(id) > 0;
    }

    @Override
    public List<Activity> queryAdInfoByType(int type) {
        return advertisingDao.queryAdInfoByType(type);
    }
}
