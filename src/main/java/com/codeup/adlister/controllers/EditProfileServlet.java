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

@WebServlet(name="EditProfileServlet", urlPatterns ="/edit")
public class EditProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newUsername = req.getParameter("newUsername");
        String newEmail = req.getParameter("newEmail");
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");
        String newPasswordConfirm = req.getParameter("newPasswordConfirm");
        User user = (User) req.getSession().getAttribute("user");

        boolean inputHasErrors = newUsername.isEmpty()
                || newEmail.isEmpty()
                || newPassword.isEmpty()
                || (newPassword.equals(oldPassword))
                || (!newPassword.equals(newPasswordConfirm));

        if(inputHasErrors) {
            resp.sendRedirect("/edit");
            return;
        } else if (DaoFactory.getUsersDao().findByUsername(newUsername) != null) {
            resp.sendRedirect("/edit");
            return;
        }

        user.setUsername(newUsername);
        user.setEmail(newEmail);
        user.setPassword(newPassword);

        DaoFactory.getUsersDao().updateProfile(user);
        resp.sendRedirect("/profile");



    }

}
