package com.demo.models;

import com.demo.DBConnection.DBConnection;
import com.demo.entity.Item;
import com.demo.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductModel {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct () {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {

        }
        return list;
    }


    public List<Product> getProductByCategory(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where category_id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Product getProductById(String id) {
        String query = "select * from product where id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public Product getProductById(int id) {
        String query = "select * from product where id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<Product> searchProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where product.name like ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8),rs.getInt(9)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public int checkExistProduct(int productId, List<Item> cart) {
        for (int i=0; i < cart.size(); i++) {
            if (cart.get(i).getProduct().getId() == productId) {
                return i;
            }
        }

        return -1;
    }

    public void deleteProduct(String id) {
        String query = "delete from product where id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void insertProduct(String name, String price, String quanity, String description, String details, String image, String status, String category_id) {
        String query = "insert into product(name, price, quantity, description, details, image, status, category_id) values (?,?,?,?,?,?,?,?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setString(3, quanity);
            ps.setString(4, description);
            ps.setString(5, details);
            ps.setString(6, image);
            ps.setString(7, status);
            ps.setString(8, category_id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
//    public static void main(String[] args) {
//        ProductModel dao = new ProductModel();
//        List<Product> list = dao.getProductByCategory("2");
//        for (Product o : list) {
//            System.out.println(o);
//        }
//    }
}
