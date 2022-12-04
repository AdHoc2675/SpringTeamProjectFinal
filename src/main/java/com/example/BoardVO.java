package com.example;

import java.util.Date;

public class BoardVO {
    private int seq;
    private String userid;
    private String title;
    private String cookingTime;
    private String cookingTools;
    private String ingredients;
    private String recipe;

    private Date regdate;
    private int likes;

    public int getSeq() {
        return seq;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getRecipe() {
        return recipe;
    }

    public void setRecipe(String recipe) {
        this.recipe = recipe;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getCookingTime() {
        return cookingTime;
    }

    public void setCookingTime(String cookingTime) {
        this.cookingTime = cookingTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getCookingTools() {
        return cookingTools;
    }

    public void setCookingTools(String cookingTools) {
        this.cookingTools = cookingTools;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }


}
