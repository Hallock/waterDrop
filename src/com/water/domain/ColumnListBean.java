package com.water.domain;

import java.util.Date;

public class ColumnListBean {
    private int id;
    private String colum;
    private Date addtime;
    private int number;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getColum() {
        return colum;
    }

    public void setColum(String colum) {
        this.colum = colum;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

}
