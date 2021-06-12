package com.example.demo.dao;

import com.example.demo.bean.OrderDetailInfo;
import com.example.demo.bean.UserOrderInfo;
import com.example.demo.entity.ActiveOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 活动订单(ActiveOrder)表数据库访问层
 *
 * @author makejava
 * @since 2021-04-28 10:29:01
 */
public interface ActiveOrderDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ActiveOrder queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<ActiveOrder> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param activeOrder 实例对象
     * @return 对象列表
     */
    List<ActiveOrder> queryAll(ActiveOrder activeOrder);

    /**
     * 新增数据
     *
     * @param activeOrder 实例对象
     * @return 影响行数
     */
    int insert(ActiveOrder activeOrder);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<ActiveOrder> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<ActiveOrder> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<ActiveOrder> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<ActiveOrder> entities);

    /**
     * 修改数据
     *
     * @param activeOrder 实例对象
     * @return 影响行数
     */
    int update(ActiveOrder activeOrder);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    List<UserOrderInfo> queryUserOrderList(Integer status, Integer commonUserId);

    List<OrderDetailInfo> queryOrderDetailList(Integer orderId);

}

