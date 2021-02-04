package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "SingleAdServlet",
        urlPatterns = "/ad/*"
)
public class SingleAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();
        int adId = Integer.parseInt(pathInfo.substring(1));
        req.setAttribute("ad", DaoFactory.getAdsDao().getAdById(adId));
        req.getRequestDispatcher("/WEB-INF/ads/singleAd.jsp").forward(req, resp);
    }
}
