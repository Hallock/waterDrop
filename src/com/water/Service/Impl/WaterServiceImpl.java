package com.water.Service.Impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.water.Service.WaterService;
import com.water.dao.WaterDao;
import com.water.dao.impl.WaterDaoImpl;
import com.water.domain.ArticleListBean;
import com.water.domain.ColumnListBean;
import com.water.domain.UserListBean;
import com.water.utils.JDBCUtil02;

public class WaterServiceImpl implements WaterService {

    @Override
    public List<UserListBean> findAll() throws SQLException {
        // TODO Auto-generated method stub
        WaterDao dao = new WaterDaoImpl();
        List<UserListBean> findAll = dao.findAll();
        return findAll;
    }

    @Override
    public List<ArticleListBean> FindArticleAll() throws SQLException {
        // TODO Auto-generated method stub
        WaterDao dao = new WaterDaoImpl();
        return dao.FindArticleAll();
    }

    @Override
    public List<ColumnListBean> FindColumnAll() throws SQLException {
        // TODO Auto-generated method stub
        WaterDao dao = new WaterDaoImpl();
        return dao.FindColumnAll();
    }

}
