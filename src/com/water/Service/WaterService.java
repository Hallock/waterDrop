package com.water.Service;

import java.sql.SQLException;
import java.util.List;

import com.water.domain.ArticleListBean;
import com.water.domain.ColumnListBean;
import com.water.domain.UserListBean;


public interface WaterService {
    /**
     * 用户列表
     *
     * @author Hallock
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
