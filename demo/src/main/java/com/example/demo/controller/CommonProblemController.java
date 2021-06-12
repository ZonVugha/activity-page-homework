package com.example.demo.controller;

import com.example.demo.entity.CommonProblem;
import com.example.demo.service.CommonProblemService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 常见问题(CommonProblem)表控制层
 *
 * @author makejava
 * @since 2021-04-28 10:22:42
 */
@RestController
@RequestMapping("/system")
public class CommonProblemController {
    /**
     * 服务对象
     */
    @Resource
    private CommonProblemService commonProblemService;

    /**
     * 获取所有常见问题列表
     * @return
     */
    @CrossOrigin
    @GetMapping("/helpCenter/list")
    public List<CommonProblem> queryAllProblems() {
        return commonProblemService.queryAllProblems();
    }

}
