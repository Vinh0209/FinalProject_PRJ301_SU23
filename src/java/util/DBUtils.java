/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author BAO TRAN
 */
public class DBUtils implements Serializable{
    public static Connection makeConnection()
    throws ClassNotFoundException, SQLException{
        Connection con = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:1433;databaseName=DoraemonComicsShop;instanceName=SQLEXPRESS";
        con = DriverManager.getConnection(url, "sa", "12345");
        return con;
    }
}
