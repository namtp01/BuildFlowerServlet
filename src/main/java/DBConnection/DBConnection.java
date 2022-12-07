package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static void main(String[] args) {
        var url = "jdbc:mysql://localhost:1122/floweristshop";
        var user = "root";
        var password = "";
        try (Connection conn = DriverManager.getConnection(url, user, password)){
            System.out.println(conn.getCatalog());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
