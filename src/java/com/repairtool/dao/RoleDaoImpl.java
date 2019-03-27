/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repairtool.dao;

/**
 *
 * @author glodeveloper
 */

import com.repairtool.dbconnection.CreateConnection;
import com.repairtool.model.Role;
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


public class RoleDaoImpl implements RoleDao {

    private Connection dbConnection;
    private PreparedStatement pStmt;

    public RoleDaoImpl() throws Exception {
        CreateConnection con = new CreateConnection();
        dbConnection = con.getConnection();

    }

    //add role
    public String addRole(Role role) {
        String status = null;
        String insertQuery = "INSERT INTO registration(roleID,roleName, createdTime,updatedTime)  VALUES (?,?,?,?)";

        System.out.println(insertQuery + "=query");
        try {
            pStmt = dbConnection.prepareStatement(insertQuery);
            pStmt.setString(1, role.getRoleID());
            pStmt.setString(2, role.getRoleName());

            pStmt.setString(3, role.getCreationTime());

            pStmt.setString(4, role.getUpdationTime());

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

    //delete role
    public String deleteRole(Role role) {
        String status = "";
        String deleteQuery = "DELETE FROM registration WHERE accountID = ? and roleID =? ";
        try {
            pStmt = dbConnection.prepareStatement(deleteQuery);
            pStmt.setString(1, role.getRoleID());
            pStmt.setString(2, role.getRoleName());

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

    //update role
    public String updateRole(Role role) {
        String status = "";
        String updateQuery = "UPDATE role SET roleID = ?, "
                + "roleDescription = ?,creationTime=?,updationTime = ?"
                + " WHERE roleID=?";
        System.out.println("Query:" + updateQuery);
        try {
            pStmt = dbConnection.prepareStatement(updateQuery);
            pStmt.setString(1, role.getRoleID());
            pStmt.setString(2, role.getRoleName());

            pStmt.setString(3, role.getUpdationTime());

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

    //List all roles
    public List<Role> getRoles() {
        List<Role> roles = new ArrayList<Role>();

        String query = "SELECT * FROM registration ";
        try {
            Statement stmt = dbConnection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Role role = new Role();
                role.setRoleID(rs.getString("accountID"));
                role.setRoleName(rs.getString("roleID"));

                role.setCreationTime(rs.getString("creationTime"));
                role.setUpdationTime(rs.getString("updationTime"));

                roles.add(role);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return roles;
    }

}
