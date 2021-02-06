package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao implements Categories {
    private Connection connection;

    public MySQLCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    private List<Long> categoryIdList(List<Category> categoryList) {
        List<Long> idList = new ArrayList<>();
        for (Category category : categoryList) idList.add(category.getId());
        return idList;
    }

    private List<Category> categoryList(List<String> categories) {
        List<Category> catList = new ArrayList<>();
        for (String category : categories) {
            String query = "SELECT * FROM categories WHERE title LIKE ? LIMIT 1";
            try {
                PreparedStatement stmt = connection.prepareStatement(query);
                stmt.setString(1, category);
                ResultSet rs = stmt.executeQuery();
                rs.next();
                catList.add(new Category(
                    rs.getLong("id"),
                    rs.getString("title")
                ));
            } catch (SQLException sqlException) {
                sqlException.printStackTrace();
            }
        }
        return catList;
    }





}
