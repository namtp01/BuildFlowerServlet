package com.demo.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public Connection getConnection() throws Exception {
//        String url = "jdbc:mysql://us-cdbr-east-06.cleardb.net:3306/heroku_8f21e8f014371d8";
        String url = "jdbc:mysql://"+serverName+":"+portNumber+"/"+dbName;
        if (instance == null || instance.trim().isEmpty()) {
            url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + dbName;
        }
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url, userID, password);
    }

    private final String serverName = "remotemysql.com";
    private final String dbName = "PtCZmN1UX7";
    private final String portNumber = "3306";
    private final String instance = "";
    private final String userID = "PtCZmN1UX7";
    private final String password = "oNzJbCoK5Q";

//    public static void main(String[] args) {
//        try {
//            System.out.println(new DBConnection().getConnection());
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//    }
}
