package com.water.dao;

import com.water.domain.ArticleListBean;
import com.water.domain.ColumnListBean;
import com.water.domain.UserBean;
import com.water.domain.UserListBean;
import com.water.servlet.AuditServlet;

import java.sql.SQLException;
import java.util.List;

public interface WaterDao {
    /**
     * 用户登录
     *
     * @param user
     * @return
     * @throws SQLException
     */
    UserBean login(UserBean user) throws SQLException;

    /**
     * 查询所有用户信息
     *
     * @return
     * @throws SQLException
     */
    List<UserListBean> findAll() throws SQLException;

    /**
     * 查询所有文章列表
     *
     * @return
     * @throws SQLException
     */
    List<ArticleListBean> FindArticleAll() throws SQLException;

    /**
     * 查询所有栏目管理
     *
     * @return
     * @throws SQLException
     */
    List<ColumnListBean> FindColumnAll() throws SQLException;
}
