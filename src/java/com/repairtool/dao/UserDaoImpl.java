/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repairtool.dao;

import com.repairtool.dbconnection.CreateConnection;
import com.repairtool.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author glodeveloper
 */
public class UserDaoImpl implements UserDao {

    private Connection dbConnection;
    private PreparedStatement pStmt;

    public UserDaoImpl() throws Exception {
        CreateConnection con = new CreateConnection();
        dbConnection = con.getConnection();

    }

    //add user
    public String addUser(User user) {
        String status = null;
        String insertQuery = "INSERT INTO  registration(accountID, userID, roleID, emailID, password,createdTimestamp,updatedTimestamp)  VALUES (?,?,?,?,?,?,?)";

        System.out.println(insertQuery + "=query");
        try {
            pStmt = dbConnection.prepareStatement(insertQuery);
            pStmt.setString(1, user.getAccountID());
            pStmt.setString(2, user.getUserID());
            pStmt.setString(3, user.getRoleID());
            pStmt.setString(4, user.getEmailID());

            pStmt.setString(5, user.getPassword());
            pStmt.setString(6, user.getCreationTime());

            pStmt.setString(7, user.getUpdationTime());

            int rs = pStmt.executeUpdate();
            System.out.println(rs + "=query");

            if (rs > 0) {
                status = "Successfully added";
                System.out.println("Success");
            } else {
                status = "Failed to add";
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            status = e.getMessage();
        }
        return status;
    }

    //delete user
    public String deleteUser(User user) {
        String status = "";
        String deleteQuery = "DELETE FROM registration WHERE accountID = ? and userID =? ";
        try {
            pStmt = dbConnection.prepareStatement(deleteQuery);
            pStmt.setString(1, user.getAccountID());
            pStmt.setString(2, user.getUserID());

            int rs = pStmt.executeUpdate();
            System.out.println("Pstmt=" + pStmt);
            if (rs > 0) {
                status = "Successfully deleted";
            } else {
                status = "Failed to delete";
            }

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return status;
    }

    //update user
    public String updateUser(User user) {
        String status = "";
        String updateQuery = "UPDATE registration SET accountID = ?, "
                + "roleID = ?,emailID=?,password = ?,updationTime=?"
                + " WHERE accountID=? AND userID=?";
        System.out.println("Query:" + updateQuery);
        try {
            pStmt = dbConnection.prepareStatement(updateQuery);
            pStmt.setString(1, user.getAccountID());
            pStmt.setString(2, user.getRoleID());
            pStmt.setString(3, user.getEmailID());

            pStmt.setString(4, user.getPassword());

            pStmt.setString(5, user.getUpdationTime());

            int rs = pStmt.executeUpdate();
            System.out.println("Pstmt=" + pStmt);
            if (rs > 0) {
                status = "Successfully updated";

            } else {
                status = "Failed to Update";
            }

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return status;
    }

    //List all users
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();

        String query = "SELECT * FROM registration ";
        try {
            Statement stmt = dbConnection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                User user = new User();
                user.setAccountID(rs.getString("accountID"));
                user.setUserID(rs.getString("userID"));
                user.setRoleID(rs.getString("roleID"));
                user.setEmailID(rs.getString("emailID"));

                user.setCreationTime(rs.getString("creationTime"));

                users.add(user);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return users;
    }

}
