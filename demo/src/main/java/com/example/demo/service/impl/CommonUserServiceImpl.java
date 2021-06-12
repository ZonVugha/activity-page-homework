package com.example.demo.service.impl;

import com.example.demo.entity.CommonUser;
import com.example.demo.dao.CommonUserDao;
import com.example.demo.service.CommonUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 普通用户(CommonUser)表服务实现类
 *
 * @author makejava
 * @since 2021-04-28 10:32:12
 */
@Service("commonUserService")
public class CommonUserServiceImpl implements CommonUserService {
    @Resource
    private CommonUserDao commonUserDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public CommonUser queryById(Integer id) {
        return this.commonUserDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<CommonUser> queryAllByLimit(int offset, int limit) {
        return this.commonUserDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param commonUser 实例对象
     * @return 实例对象
     */
    @Override
    public CommonUser insert(CommonUser commonUser) {
        this.commonUserDao.insert(commonUser);
        return commonUser;
    }

    /**
     * 修改数据
     *
     * @param commonUser 实例对象
     * @return 实例对象
     */
    @Override
    public CommonUser update(CommonUser commonUser) {
        this.commonUserDao.update(commonUser);
        return this.queryById(commonUser.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.commonUserDao.deleteById(id) > 0;
    }
}
