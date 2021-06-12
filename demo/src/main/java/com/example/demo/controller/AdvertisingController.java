package com.example.demo.controller;

import com.example.demo.entity.Activity;
import com.example.demo.entity.Advertising;
import com.example.demo.service.AdvertisingService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 广告(Advertising)表控制层
 *
 * @author makejava
 * @since 2021-04-28 10:43:23
 */
@RestController
@RequestMapping("/advertising")
public class AdvertisingController {
    /**
     * 服务对象
     */
    @Resource
    private AdvertisingService advertisingService;

    @CrossOrigin
    @GetMapping("/advertising/list")
    public List<Activity> queryAdInfoByType(int type) {
        return advertisingService.queryAdInfoByType(type);
    }

}
