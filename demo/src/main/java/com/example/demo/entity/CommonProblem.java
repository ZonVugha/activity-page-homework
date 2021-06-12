package com.example.demo.entity;

import java.io.Serializable;

/**
 * 常见问题(CommonProblem)实体类
 *
 * @author makejava
 * @since 2021-04-28 10:22:42
 */
public class CommonProblem implements Serializable {
    private static final long serialVersionUID = -27173822174501707L;
    /**
     * id
     */
    private Integer id;
    /**
     * 问题
     */
    private String problem;
    /**
     * 回答
     */
    private String answer;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

}
