package com.example.demo.service.impl;

import com.example.demo.bean.OrderDetailInfo;
import com.example.demo.bean.UserOrderInfo;
import com.example.demo.entity.ActiveOrder;
import com.example.demo.dao.ActiveOrderDao;
import com.example.demo.service.ActiveOrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 活动订单(ActiveOrder)表服务实现类
 *
 * @author makejava
 * @since 2021-04-28 10:29:01
 */
@Service("activeOrderService")
public class ActiveOrderServiceImpl implements ActiveOrderService {
    @Resource
    private ActiveOrderDao activeOrderDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public ActiveOrder queryById(Integer id) {
        return this.activeOrderDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ActiveOrder> queryAllByLimit(int offset, int limit) {
        return this.activeOrderDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param activeOrder 实例对象
     * @return 实例对象
     */
    @Override
    public ActiveOrder insert(ActiveOrder activeOrder) {
        this.activeOrderDao.insert(activeOrder);
        return activeOrder;
    }

    /**
     * 修改数据
     *
     * @param activeOrder 实例对象
     * @return 实例对象
     */
    @Override
    public ActiveOrder update(ActiveOrder activeOrder) {
        this.activeOrderDao.update(activeOrder);
        return this.queryById(activeOrder.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.activeOrderDao.deleteById(id) > 0;
    }

    @Override
    public List<UserOrderInfo> queryUserOrderList(Integer status, Integer commonUserId) {
        return activeOrderDao.queryUserOrderList(status, commonUserId);
    }

    @Override
    public List<OrderDetailInfo> queryOrderDetailList(Integer orderId) {
        return activeOrderDao.queryOrderDetailList(orderId);
    }
}
