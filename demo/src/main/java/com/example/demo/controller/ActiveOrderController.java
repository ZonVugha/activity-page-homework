package com.example.demo.controller;

import com.example.demo.bean.OrderDetailInfo;
import com.example.demo.bean.UserOrderInfo;
import com.example.demo.entity.ActiveOrder;
import com.example.demo.service.ActiveOrderService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.*;

/**
 * 活动订单(ActiveOrder)表控制层
 *
 * @author makejava
 * @since 2021-04-28 10:29:01
 */
@RestController
@RequestMapping("/activity")
public class ActiveOrderController {
    /**
     * 服务对象
     */
    @Resource
    private ActiveOrderService activeOrderService;

    @CrossOrigin
    @GetMapping("/signUpTable/list")
    public List<UserOrderInfo> queryUserOrderList(Integer status, Integer commonUserId) {
        List<UserOrderInfo> list = new ArrayList<UserOrderInfo>();
        if (commonUserId == null) {
            return list;
        }

        list = activeOrderService.queryUserOrderList(status, commonUserId);
        return list;
    }

    @CrossOrigin
    @GetMapping("/activity/get")
    public List<OrderDetailInfo> queryUserOrderList(Integer orderId) {
        List<OrderDetailInfo> list = new ArrayList<OrderDetailInfo>();
        if (orderId == null) {
            return list;
        }

        list = activeOrderService.queryOrderDetailList(orderId);
        return list;
    }

}
