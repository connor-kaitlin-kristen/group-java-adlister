package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        List<String> categoryStringList = Arrays.asList(request.getParameterValues("category"));
        Ad ad = new Ad(
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description"),
                categoryStringList
        );

        long newAdId = DaoFactory.getAdsDao().insert(ad);
        List<Category> catList = DaoFactory.getCategoriesDao().categoryList(categoryStringList);
        List<Long> catIdList = DaoFactory.getCategoriesDao().categoryIdList(catList);
        DaoFactory.getCategoriesDao().insertAdCategory(newAdId, catIdList);
        response.sendRedirect("/ads");
    }
}
