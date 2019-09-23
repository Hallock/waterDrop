package com.water.dao.impl;

import com.water.dao.WaterDao;
import com.water.domain.ArticleListBean;
import com.water.domain.ColumnListBean;
import com.water.domain.UserBean;
import com.water.domain.UserListBean;
import com.water.utils.JDBCUtil02;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class WaterDaoImpl implements WaterDao {

    /**
     * 用户登录
     */
    @Override
    public UserBean login(UserBean user) throws SQLException {

        QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
        String sql = "select * from users where username = ? and password = ? ";
        UserBean query = runner.query(sql, new BeanHandler<UserBean>(UserBean.class), user.getUsername(), user.getPassword());
        return query;

    }

    /**
     * 查询所有用户
     */
    @Override
    public List<UserListBean> findAll() throws SQLException {
        // TODO Auto-generated method stub
        QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
        String sql = "select * from userlist";
        return runner.query(sql, new BeanListHandler<UserListBean>(UserListBean.class));
    }

    /**
     * 查询所有文章列表
     */
    @Override
    public List<ArticleListBean> FindArticleAll() throws SQLException {
        // TODO Auto-generated method stub
        QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
        String sql = "select * from article";
        return runner.query(sql, new BeanListHandler<ArticleListBean>(ArticleListBean.class));

    }

    /**
     * 查询所有栏目
     */
    @Override
    public List<ColumnListBean> FindColumnAll() throws SQLException {
        // TODO Auto-generated method stub
        QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
        String sql = "select * from `column`";
        return runner.query(sql, new BeanListHandler<ColumnListBean>(ColumnListBean.class));
    }
}
