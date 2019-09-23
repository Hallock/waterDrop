package com.water.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.Service.WaterService;
import com.water.Service.Impl.WaterServiceImpl;
import com.water.domain.ColumnListBean;

/**
 * Servlet implementation class ColumnServlet
 */
public class ColumnServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        try {
            WaterService service = new WaterServiceImpl();
            List<ColumnListBean> list = service.FindColumnAll();
            request.setAttribute("list", list);
            request.getRequestDispatcher("jsp/column.jsp").forward(request, response);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
