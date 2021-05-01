/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnector {

    public static Connection getConnection() {
        Connection connection = null;
        String url = "jdbc:sqlserver://DESKTOP-RFPBK5Q\\SQLEXPRESS:1433;databaseName=mydata";
        String user = "sa";
        String pass = "khuong1609";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
            System.out.println("Connect success!!!");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }

        return connection;
    }

    public static void closed(Statement st, ResultSet rs, Connection cnn) {
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if (cnn != null) {
            try {
                cnn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        Connection connection = getConnection();
        System.out.println("Ket noi thanh cong");
    }
}
