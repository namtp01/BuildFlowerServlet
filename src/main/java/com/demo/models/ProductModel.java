package com.demo.models;

import com.demo.DBConnection.DBConnection;
import com.demo.entity.Account;
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
                        rs.getBoolean(8)));
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
                        rs.getBoolean(8)));
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
                        rs.getBoolean(8)));
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
                        rs.getBoolean(8)));
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

    public Product findProduct(int id) {
        String query = "SELECT * FROM product WHERE id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeQuery();
            while (rs.next()) {
                return (new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8)));
            }
        } catch (Exception e) {

        }
        return null;
    }
    public void deleteProduct(String id) {
        String query = "DELETE FROM product WHERE id = ?";
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
}
