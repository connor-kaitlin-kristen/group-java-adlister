package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    List<Ad> filterAds(String input);
    Ad getAdById(int id);
    void deleteAd(int id);
    void updateAds(Ad ad);
    List<Ad> getUserAds(long id);
}
