package com.example.demo.service;

import com.example.demo.bean.OrderDetailInfo;
import com.example.demo.bean.UserOrderInfo;
import com.example.demo.entity.ActiveOrder;

import java.util.List;

/**
 * 活动订单(ActiveOrder)表服务接口
 *
 * @author makejava
 * @since 2021-04-28 10:29:01
 */
public interface ActiveOrderService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ActiveOrder queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<ActiveOrder> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param activeOrder 实例对象
     * @return 实例对象
     */
    ActiveOrder insert(ActiveOrder activeOrder);

    /**
     * 修改数据
     *
     * @param activeOrder 实例对象
     * @return 实例对象
     */
    ActiveOrder update(ActiveOrder activeOrder);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    List<UserOrderInfo> queryUserOrderList(Integer status, Integer commonUserId);

    List<OrderDetailInfo> queryOrderDetailList(Integer orderId);

}
