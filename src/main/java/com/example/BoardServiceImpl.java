package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    BoardDAO boardDAO;

    @Override
    public int insertBoard(BoardVO vo){
        return boardDAO.insertBoard(vo);
    }

    public int deleteBoard(int seq){
        return boardDAO.deleteBoard(seq);
    }

    public int updateBoard(BoardVO vo){
        return boardDAO.getBoard(vo);
    }

}
