package com.example.recipe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipeServiceImpl implements RecipeService {
    @Autowired
    RecipeDAO recipeDAO;
    @Override
    public int insertBoard(RecipeVO vo){
        return recipeDAO.insertBoard(vo);
    }
    public int deleteBoard(int seq){
        return recipeDAO.deleteBoard(seq);
    }
    public int updateBoard(RecipeVO vo){
        return recipeDAO.updateBoard(vo);
    }
    public RecipeVO getBoard(int seq){
        return recipeDAO.getBoard(seq);
    }
    public List<RecipeVO> getBoardList(){
        return recipeDAO.getBoardList();
    }

}
