package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String input = request.getParameter("searchBar");
        if (input == null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
        } else {
            request.setAttribute("ads", DaoFactory.getAdsDao().filterAds(input));
        }
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setAttribute("filteredAds")
//
//        req.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(req, resp);
//    }
}
