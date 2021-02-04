package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

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
        String pathInfo = req.getPathInfo();
        int adId = Integer.parseInt(pathInfo.substring(1));
        DaoFactory.getAdsDao().deleteAd(adId);
//        resp.sendRedirect("/ads");
    }
}
