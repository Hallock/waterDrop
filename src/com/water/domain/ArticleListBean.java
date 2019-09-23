package com.water.domain;

import java.util.Date;

public class ArticleListBean {
    private int aid;
    private String title;
    private Date isstime;
    private String status;
    private int viewcount;
    private int like;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getIsstime() {
        return isstime;
    }

    public void setIsstime(Date isstime) {
        this.isstime = isstime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getViewcount() {
        return viewcount;
    }

    public void setViewcount(int viewcount) {
        this.viewcount = viewcount;
    }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

}
