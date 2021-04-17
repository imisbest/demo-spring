package com.csw.controller;

import com.alibaba.fastjson.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("get")
public class GetJsonObj {
    @RequestMapping("json")
    public void getJsonObj(HttpServletRequest request, HttpServletResponse response, String jsonObj) {
        System.out.println("empjson字符串" + jsonObj);
        List list = JSONArray.parseArray(jsonObj);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i)+",");
        }
    }
}
