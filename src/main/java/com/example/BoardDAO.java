package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int insertBoard(BoardVO vo){
        String sql = "insert into RECIPE_DATA (title, userid, cookingTools, cookingTime, ingredients, recipe, likes) values ("
                + "'" + vo.getTitle() + "',"
                + "'" + vo.getUserid() + "',"
                + "'" + vo.getCookingTools() + "',"
                + "'" + vo.getCookingTime() + "',"
                + "'" + vo.getIngredients() + "',"
                + "'" + vo.getRecipe() + "',"
                + "'" + vo.getLikes() + "')";
        return template.update(sql);
    }

    public int updateBoard(BoardVO vo){
        String sql = "update RECIPE_DATA set title='" + vo.getTitle() + "',"
                + " userid='" + vo.getUserid() + "',"
                + " cookingTools='" + vo.getCookingTools() + "',"
                + " cookingTime='" + vo.getCookingTime() + "',"
                + " ingredients='" + vo.getIngredients() + "',"
                + " recipe='" + vo.getRecipe()
                + "' where seq=" + vo.getSeq();
        return template.update(sql);
    }

    public int deleteBoard(int seq){
        String sql = "delete from RECIPE_DATA where seq = " + seq;
        return template.update(sql);
    }

    public BoardVO getBoard(int seq){
        String sql = "select * from RECIPE_DATA where seq=" + seq;
        return template.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList(){
        String sql = "select * from RECIPE_DATA order by regdate desc";
        return template.query(sql, new BoardRowMapper());
    }
}

class BoardRowMapper implements RowMapper<BoardVO>{
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException{
        BoardVO vo = new BoardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setTitle(rs.getString("title"));
        vo.setUserid(rs.getString("userid"));
        vo.setCookingTools(rs.getString("cookingTools"));
        vo.setCookingTime(rs.getString("cookingTime"));
        vo.setIngredients(rs.getString("ingredients"));
        vo.setRecipe(rs.getString("recipe"));
        vo.setRegdate(rs.getDate("regdate"));
        vo.setLikes(rs.getInt("likes"));
        return vo;
    }
}
