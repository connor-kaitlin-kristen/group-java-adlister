package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private List<String> getAdCategories(long id) {
        List<String> catList = new ArrayList<>();
        String query = String.format("SELECT categories.title FROM categories " +
                "JOIN ad_category ac ON categories.id = ac.category_id " +
                "JOIN ads ON ads.id = ac.ad_id WHERE ads.id IN (%s)", id);
        try {
            Statement  stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()) {
                catList.add(
                        rs.getString(1)
                );
            }
            return catList;
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
            throw new RuntimeException("could not get categories");
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                getAdCategories(rs.getLong("id"))
        );
    }

    public Ad getAdById(int id){
        Ad ad = null;
        String query = "SELECT * FROM ads WHERE id = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                ad = new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        getAdCategories(rs.getLong("id"))
                );
            }
            return ad;
        } catch (SQLException e) {
            throw new RuntimeException("Error finding an ad by id", e);
        }
    }

    private void deleteAdCategory(long adId) {
        String query = String.format("DELETE FROM ad_category WHERE ad_id = %d ", adId);
        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(query);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
    }

    @Override
    public void deleteAd(int id) {
        deleteAdCategory(id);
        String query = "DELETE FROM ads WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error with delete function", e);
        }
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    @Override
    public List<Ad> filterAds(String input) {
        String query = "SELECT * FROM ads WHERE title LIKE CONCAT('%', ?, '%') OR description LIKE CONCAT('%', ?, '%')";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, input);
            stmt.setString(2, input);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException sqlException) {
            throw new RuntimeException("cannot find ad");
        }
    }

    public List<Ad> getUserAds(long id) {
        String userAds = "SELECT * FROM ads " +
                "JOIN users ON users.id = user_id WHERE users.id LIKE "+id;
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(userAds);
            return listUserAds(rs);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
            throw new RuntimeException("could not retrieve adds");
        }
    }


    private List<Ad> listUserAds(ResultSet rs) {
        List<Ad> userAds = new ArrayList<>();
        try {
            while (rs.next()){
                userAds.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        getAdCategories(rs.getLong("id"))
                ));
            }
            return userAds;
        } catch (SQLException sqle) {
            sqle.printStackTrace();
            throw new RuntimeException("could not retrieve adds");
        }
    }

    @Override
    public void updateAds(Ad ad) {
        String query = "UPDATE ads SET title = ?, description = ? WHERE id LIKE ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setLong(3, ad.getId());
            stmt.executeUpdate();
        } catch (SQLException sqle) {
            throw new RuntimeException("could not update ad");
        }
    }
}
