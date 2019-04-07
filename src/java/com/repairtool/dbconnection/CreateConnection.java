package com.repairtool.dbconnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/**
 *
 * @author Glodeveloper3
 */
public class CreateConnection {

    Properties prop = new Properties();
    Connection con = null;

    public CreateConnection() throws IOException {

        //InputStream input = null;
        //input = new FileInputStream(filename);
        //prop.load(input);
        prop.setProperty("drivername", "com.mysql.jdbc.Driver");
        prop.setProperty("dbusername", "root");
        prop.setProperty("dbpassword", "gl0v1s10n");
        //     prop.setProperty("url", "jdbc:mysql://localhost/repairstatusfinal");
        prop.setProperty("url", "jdbc:mysql://localhost/repairstatus");
        //input.close();

    }

    public Connection getConnection() throws SQLException, Exception {
        String driver = prop.getProperty("drivername");
        String connectionURL = prop.getProperty("url");
        String usernamedb = prop.getProperty("dbusername");
        String passworddb = prop.getProperty("dbpassword");

        try {
            Class.forName(driver);

            con = DriverManager.getConnection(connectionURL, usernamedb, passworddb);

            return con;
        } catch (SQLException e) {
            throw e;
        } catch (Exception e) {
            throw e;
        }

    }

    public Statement getStatement() throws Exception {
        if (con == null) {
            con = getConnection();
        }

        return con.createStatement();
    }

    public void connectionClose() throws SQLException {

        con.close();

        con = null;
        // System.err.println("Connecction closed");
    }

    public PreparedStatement getPreparedStatement(String sql) throws Exception {
        if (con == null) {

            con = getConnection();
        }
        return con.prepareStatement(sql);

    }

    public void setAutoCommit(boolean flag) throws Exception {
        con.setAutoCommit(flag);

    }

    public void commit() throws Exception {
        con.commit();

    }

    public void rollback() throws Exception {
        con.rollback();

    }

}
