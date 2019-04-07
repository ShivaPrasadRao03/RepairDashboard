/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repairtool.utilities;

import com.google.gson.Gson;
import com.repairtool.dbconnection.CreateConnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author Mahesh
 */
public class GetDropdownValues {

    private static CreateConnection con;
    private static Statement stmt;
    private static ResultSet rs;
    private static String sql;

    //Get accountID
    public static String getAccounts() {
       String accountID = "";
        JSONArray jArray = new JSONArray();
        try {
             con = new CreateConnection();
             stmt = con.getStatement();
             sql = "Select distinct accountID FROM Account";
             rs = stmt.executeQuery(sql);
            while (rs.next()) {
                accountID = rs.getString("accountID");
                JSONObject jObj = new JSONObject();
                jObj.put("accountID", accountID);
                jArray.put(jObj);
            }
            JSONObject jObjDevice = new JSONObject();
            jObjDevice.put("account", jArray);
//            JSONObject jObjDeviceList = new JSONObject();
//            jObjDeviceList.put("devicelist", jObjDevice);

            accountID = jObjDevice.toString();

        } catch (Exception e) {
            e.printStackTrace();;
        }
        return accountID;
    
    }

    //Get Users
    public static String getUsers() {
        String users = "";
      String userID = "";
        JSONArray jArray = new JSONArray();
        try {
             con = new CreateConnection();
             stmt = con.getStatement();
             sql = "Select distinct userID FROM regisration";
             rs = stmt.executeQuery(sql);
            while (rs.next()) {
                userID = rs.getString("userID");
                JSONObject jObj = new JSONObject();
                jObj.put("userID", userID);
                jArray.put(jObj);
            }
            JSONObject jObjDevice = new JSONObject();
            jObjDevice.put("user", jArray);
//            JSONObject jObjDeviceList = new JSONObject();
//            jObjDeviceList.put("devicelist", jObjDevice);

            userID = jObjDevice.toString();

        } catch (Exception e) {
            e.printStackTrace();;
        }
        return userID;
    }

    public static String getRoles() {
        String roles = "";
        String roleID = "";
        JSONArray jArray = new JSONArray();
        try {
            CreateConnection con = new CreateConnection();
            Statement stmt = con.getStatement();
            String sql = "Select distinct roleID FROM role";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                roleID = rs.getString("roleID");
                JSONObject jObj = new JSONObject();
                jObj.put("roleID", roleID);
                jArray.put(jObj);
            }
            JSONObject jObjDevice = new JSONObject();
            jObjDevice.put("role", jArray);
//            JSONObject jObjDeviceList = new JSONObject();
//            jObjDeviceList.put("devicelist", jObjDevice);

            roleID = jObjDevice.toString();

        } catch (Exception e) {
            e.printStackTrace();;
        }
        return roleID;
    }

    public static void main(String[] args) {
        String accounts = getAccounts();
        System.out.println("Accounts" + accounts);
        String users = getUsers();
        System.out.println("Users=" + users);
        String roles = getRoles();
        System.out.println("Roles=" + roles);
    }

}
