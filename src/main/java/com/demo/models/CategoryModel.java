package com.demo.models;

import com.demo.DBConnection.DBConnection;
import com.demo.entity.Category;
import com.demo.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryModel {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getBoolean(3)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public void deleteCategory(String id) {
        String query = "DELETE FROM Kht9OmxnNP.category WHERE id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeQuery();
            while (rs.next()) {

            }
        } catch (Exception e) {

        }
    }

    public List<Category> searchCategoryByName(String txtSearch) {
        List<Category> list = new ArrayList<>();
        String query = "select * from Kht9OmxnNP.category where category.name like ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getBoolean(3)));
            }
        } catch (Exception e) {

        }
        return list;
    }
}
