package com.green.growgreen.todo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

@Data
public class TodoInsDto {
    @JsonIgnore
    private int itodo;
    private int iuser;
    private int iplant;
    private String contents;
    private String deadlineDay;
    private String deadlineTime;
}
