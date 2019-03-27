/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repairtool.dao;

import com.repairtool.model.User;
import java.util.List;

/**
 *
 * @author glodeveloper
 */
public interface UserDao {

    public String addUser(User user);

    public String updateUser(User user);

    public String deleteUser(User user);

    public List<User> getAllUsers();

}
