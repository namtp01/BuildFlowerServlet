package com.demo.models;

import com.demo.DBConnection.DBConnection;
import com.demo.entity.Category;

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
        } catch (Exception e){

        }

        return list;
    }

    public void deleteCategory(String id) {
        String query = "DELETE FROM category WHERE id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public List<Category> searchCategoryByName(String txtSearch) {
        List<Category> list = new ArrayList<>();
        String query = "select * from category where category.name like ?";
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

    public int countCategory() {
        String query = "SELECT * FROM category";
        int count = 0;
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                count++;
            }
        } catch (Exception e) {

        }
        return count;
    }

    public void updateCategory(Category category) {
        String query = "UPDATE category SET name = ? WHERE category.id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category.getName());
            ps.setInt(2, category.getId());
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void insertCategory(String name) {
        String query = "INSERT INTO category(name, category.status) " +
                "values(?,?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, 1);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public Category findCategory(int id) {
        String query = "SELECT * FROM category WHERE id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getBoolean(3)));
            }
        } catch (Exception e) {

        }
        return null;
    }
//    public static void main(String[] args) {
//        CategoryModel dao = new CategoryModel();
//        List<Category> list = dao.getAllCategory();
//        for (Category o : list) {
//            System.out.println(o);
//        }
//    }
}
