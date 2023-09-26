package com.demo.models;

import com.demo.DBConnection.DBConnection;
import com.demo.entity.Account;
import com.demo.entity.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AccountModel {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account loginForAdmin(String username, String password) {
        String query = "select * from account where username = ? and password = ? and role = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, "Admin");
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e){

        }

        return null;
    }

    public Account loginForUser(String username, String password) {
        String query = "select * from account where username = ? and password = ? and role = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, "User");
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e){

        }

        return null;
    }

    public Account checkAccountExist(String username) {
        String query = "select * from account where username = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e){

        }

        return null;
    }

    public void signup(String username, String password) {
        String query = "insert into account(username, password, role) values(?,?,0)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public List<Account> findAllAccount() {
        String query = "SELECT * FROM account";
        List<Account> listAccount = new ArrayList<>();
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                listAccount.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return listAccount;
    }

    public void deleteAccount(String id) {
        String query = "DELETE FROM account WHERE id = ?";
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

    public List<Account> searchAccount(String username) {
        String query = "select * from account where username = ?";
        List<Account> listAccount = new ArrayList<>();
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                listAccount.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));

            }
        } catch (Exception e){

        }
        return listAccount;
    }

    public void insertAccount(String username, String password, String full_name, String address, String email, String phone, String role) {
        String query = "INSERT INTO account(username, password, full_name, address, email, phone, role) " +
                "values(?,?,?,?,?,?,?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, full_name);
            ps.setString(4, address);
            ps.setString(5, email);
            ps.setString(6, phone);
            ps.setString(7, role);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public Account findAccount(int id) {
        String query = "SELECT * FROM account WHERE id = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void updateAccount(Account account) {
        String query = "UPDATE account SET username = ?, password = ?, full_name = ?, address = ?, email = ?, phone = ?, role = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ps.setString(3, account.getFull_name());
            ps.setString(4, account.getAddress());
            ps.setString(5, account.getEmail());
            ps.setString(6, account.getPhone());
            ps.setString(7, account.getRole());
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public int countAccount() {
        String query = "SELECT * FROM account";
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
}
