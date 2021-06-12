package com.example.demo.service.impl;

import com.example.demo.entity.CommonProblem;
import com.example.demo.dao.CommonProblemDao;
import com.example.demo.service.CommonProblemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 常见问题(CommonProblem)表服务实现类
 *
 * @author makejava
 * @since 2021-04-28 10:22:42
 */
@Service("commonProblemService")
public class CommonProblemServiceImpl implements CommonProblemService {
    @Resource
    private CommonProblemDao commonProblemDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public CommonProblem queryById(Integer id) {
        return this.commonProblemDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<CommonProblem> queryAllByLimit(int offset, int limit) {
        return this.commonProblemDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param commonProblem 实例对象
     * @return 实例对象
     */
    @Override
    public CommonProblem insert(CommonProblem commonProblem) {
        this.commonProblemDao.insert(commonProblem);
        return commonProblem;
    }

    /**
     * 修改数据
     *
     * @param commonProblem 实例对象
     * @return 实例对象
     */
    @Override
    public CommonProblem update(CommonProblem commonProblem) {
        this.commonProblemDao.update(commonProblem);
        return this.queryById(commonProblem.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.commonProblemDao.deleteById(id) > 0;
    }

    @Override
    public List<CommonProblem> queryAllProblems() {
        return commonProblemDao.queryAllProblems();
    }
}
