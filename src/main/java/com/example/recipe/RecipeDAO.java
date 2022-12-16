package com.example.recipe;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class RecipeDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(RecipeVO vo){
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public RecipeVO getBoard(int seq){
        RecipeVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }

    public  List<RecipeVO> getBoardList(){
        List<RecipeVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }

    public int updateBoard(RecipeVO vo){
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }

    public int deleteBoard(int seq){
        int result = sqlSession.delete("Board.deleteBoard", seq);
        return result;
    }

}

class RecipeRowMapper implements RowMapper<RecipeVO>{
    @Override
    public RecipeVO mapRow(ResultSet rs, int rowNum) throws SQLException{
        RecipeVO vo = new RecipeVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setTitle(rs.getString("title"));
        vo.setUserid(rs.getString("userid"));
        vo.setCookingTools(rs.getString("cookingTools"));
        vo.setCookingTime(rs.getString("cookingTime"));
        vo.setIngredients(rs.getString("ingredients"));
        vo.setRecipe(rs.getString("recipe"));
        vo.setRegdate(rs.getDate("regdate"));
        vo.setLevel(rs.getInt("level"));
        return vo;
    }
}
