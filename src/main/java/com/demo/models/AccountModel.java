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

    public Account login(String username, String password) {
        String query = "select * from account where username = ? and password = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getInt(9)));
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
                        rs.getBoolean(8),
                        rs.getInt(9)));
            }
        } catch (Exception e){

        }

        return null;
    }

    public void signup(String username, String password) {
        String query = "insert into account(username, password, role_id) values(?,?,0)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
}
