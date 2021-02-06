package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;

import java.util.List;

public interface Categories {
    void insertAdCategory(long adId, List<Long> catId);
    List<Category> categoryList(List<String> categories);
    List<Long> categoryIdList(List<Category> categoryList);

}
