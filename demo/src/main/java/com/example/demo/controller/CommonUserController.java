package com.example.demo.controller;

import com.example.demo.entity.CommonUser;
import com.example.demo.service.CommonUserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 普通用户(CommonUser)表控制层
 *
 * @author makejava
 * @since 2021-04-28 10:32:12
 */
@RestController
@RequestMapping("commonUser")
public class CommonUserController {
    /**
     * 服务对象
     */
    @Resource
    private CommonUserService commonUserService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @CrossOrigin
    @GetMapping("selectOne")
    public CommonUser selectOne(Integer id) {
        return this.commonUserService.queryById(id);
    }

}
