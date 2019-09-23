package com.water.servlet;


import com.water.dao.impl.WaterDaoImpl;
import com.water.dao.WaterDao;
import com.water.domain.UserBean;

import javax.management.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class loginServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置响应内容类型
//        resp.setContentType("text/html");

//        //设置逻辑实现
////        PrintWriter out = resp.getWriter();
////        out.println("<h1>" + message + "</h1>");

//        String password = req.getParameter("password");
//        String verifycode = req.getParameter("verifycode");

        try {
            req.setCharacterEncoding("UTF-8");
            String userName = req.getParameter("name");
            String password = req.getParameter("password");
            System.out.println("name=" + userName);

            UserBean user = new UserBean();
            user.setUsername(userName);
            user.setPassword(password);

            WaterDao dao = new WaterDaoImpl();
            UserBean userBean = dao.login(user);

            if (userBean != null) {
                //成功了，进入首页
                req.getSession().setAttribute("userBean", userBean);
                resp.sendRedirect("jsp/main.jsp");
            } else {
                //不成功...
                resp.sendRedirect("jsp/login.jsp");
//                req.getRequestDispatcher("jsp/login.jsp").forward(req, resp);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    public void destroy() {
        super.destroy();
    }

}
