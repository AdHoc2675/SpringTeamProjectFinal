package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String home(){
        System.out.println("home");
        return "index";
    }

    @RequestMapping("classlist")
    public String boardList(){
        System.out.println("board/list");
        return "board/list";
    }
}
