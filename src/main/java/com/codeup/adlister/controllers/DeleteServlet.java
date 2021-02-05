package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "DeleteServlet",
        urlPatterns = "/ad/delete/*"
)
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;
        }
        User user = (User) req.getSession().getAttribute("user");
        long uId = user.getId();
        String pathInfo = req.getPathInfo();
        int adId = Integer.parseInt(pathInfo.substring(1));
        Ad ad = DaoFactory.getAdsDao().getAdById(adId);
        if (uId == ad.getUserId()) {
            DaoFactory.getAdsDao().deleteAd(adId);
            resp.sendRedirect("/profile");
            return;
        }
        resp.sendRedirect("/profile");
    }
}
