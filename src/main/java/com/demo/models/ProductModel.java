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

    public void insertProduct(String name, String quantity, String price, String description, String detail, String image) {
        String query = "INSERT INTO Kht9OmxnNP.product(Kht9OmxnNP.product.name, Kht9OmxnNP.product.price, Kht9OmxnNP.product.quantity, Kht9OmxnNP.product.description, Kht9OmxnNP.product.details, Kht9OmxnNP.product.image, Kht9OmxnNP.product.status, Kht9OmxnNP.product.category_id) " +
                "values(?,?,?,?,?,?,?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, quantity);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, detail);
            ps.setString(6, image);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public int countProduct() {
        String query = "SELECT * FROM Kht9OmxnNP.product";
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

    public void updateProduct(Product product) {
        String query = "UPDATE Kht9OmxnNP.product SET name = ?, Kht9OmxnNP.product.price = ?, Kht9OmxnNP.product.quantity = ?, Kht9OmxnNP.product.description = ?, Kht9OmxnNP.product.details = ?, Kht9OmxnNP.product.image = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getName());
            ps.setDouble(2, product.getPrice());
            ps.setInt(3, product.getQuantity());
            ps.setString(4, product.getDescription());
            ps.setString(5, product.getDetails());
            ps.setString(6, product.getImage());
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
}
