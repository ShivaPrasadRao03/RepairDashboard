/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repairtool.dao;

import com.repairtool.model.Role;
import java.util.List;

/**
 *
 * @author glodeveloper
 */
public interface RoleDao {

    public String addRole(Role role);

    public String updateRole(Role role);

    public String deleteRole(Role role);

    public List<Role> getRoles();

}
