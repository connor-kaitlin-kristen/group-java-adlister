package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "EditAdServlet",
        urlPatterns = "/ad/edit/*"
)
public class EditAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();
        int adId = Integer.parseInt(pathInfo.substring(1));
        req.setAttribute("ad", DaoFactory.getAdsDao().getAdById(adId));
        req.getRequestDispatcher("/WEB-INF/ad/editAd.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pathInfo = req.getPathInfo();
        int adId = Integer.parseInt(pathInfo.substring(1));
        Ad ad = DaoFactory.getAdsDao().getAdById(adId);
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        ad.setTitle(title);
        ad.setDescription(description);
        DaoFactory.getAdsDao().updateAds(ad);
        resp.sendRedirect("/profile");
    }
}
