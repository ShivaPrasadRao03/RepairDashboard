package com.repairtool.dbconnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Logger;

/**
 *
 * @author Glodeveloper3
 */
public class ServerDBConnection {
     static Logger log = Logger.getLogger(ServerDBConnection.class.getName());
    final static org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(ServerDBConnection.class);

   
    Properties prop = new Properties();
    Connection con = null;

    public  ServerDBConnection(String server) throws IOException {

        //InputStream input = null;
        //input = new FileInputStream(filename);
        //prop.load(input);
        System.out.println("SERVER DB");
        prop.setProperty("drivername", "com.mysql.jdbc.Driver");
        //to host in up108 give gts,opengts as username and password
        prop.setProperty("dbusername", "gts");
        prop.setProperty("dbpassword", "opengts");
        prop.setProperty("url", "jdbc:mysql://"+server+"/gts");
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
            System.out.println(e.getMessage());
            logger.error("Server DB Exception"+e.getMessage());
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
