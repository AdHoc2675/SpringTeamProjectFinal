package com.example.recipe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/board")
public class RecipeController {
    @Autowired
    RecipeService boardService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String boardlist(Model model){
        model.addAttribute("list", boardService.getBoardList());
        return "board/list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(){
        return "board/addpostform";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(RecipeVO vo){
        int i = boardService.insertBoard(vo);
        if (i == 0 )
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        RecipeVO recipeVO = boardService.getBoard(id);
        model.addAttribute("u", recipeVO);
        return "board/editform";


    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOK(RecipeVO vo){
        int i = boardService.updateBoard(vo);
        if (i == 0 )
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id, Model model){
        int i = boardService.deleteBoard(id);
        if (i == 0 )
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");

        return "redirect:../list";
    }
}
