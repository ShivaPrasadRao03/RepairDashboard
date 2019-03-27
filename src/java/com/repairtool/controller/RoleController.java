/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repairtool.controller;

import com.repairtool.dao.RoleDaoImpl;
import com.repairtool.model.Role;
import com.repairtool.utilities.EpochtoReadableDate;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author glodeveloper
 */
@WebServlet(name = "RoleController", urlPatterns = {"/RoleController"})
public class RoleController extends HttpServlet {

    private Role role = new Role();
    private final RoleDaoImpl roledao;
    private EpochtoReadableDate ed = new EpochtoReadableDate();
    private String roleID = "";
    private String roleName = "";

    private String creationTime = "";
    private String updationTime = "";
    private String statusrole = "";

    public RoleController() throws Exception {
        this.roledao = new RoleDaoImpl();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may rolee following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RoleController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RoleController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();

        String requestType = request.getParameter("requestType");
        if (requestType.equalsIgnoreCase("add")) {

            roleID = request.getParameter("roleID");
            roleName = request.getParameter("roleName");
            roleID = request.getParameter("roleID");

            creationTime = ed.currentEpoch() + "";
            updationTime = ed.currentEpoch() + "";
            statusrole = roledao.addRole(role);

            System.out.println("add role=" + statusrole);
            out.print(statusrole);

        } else if (requestType.equalsIgnoreCase("edit")) {

            roleID = request.getParameter("roleID");
            roleName = request.getParameter("roleName");

            creationTime = ed.currentEpoch() + "";
            updationTime = ed.currentEpoch() + "";

            statusrole = roledao.updateRole(role);
             System.out.println("Edit Statrole=" + statusrole);
            out.print(statusrole);

        } else if (requestType.equalsIgnoreCase("delete")) {
            roleID = request.getParameter("accountID");
            roleName = request.getParameter("roleerID");
            statusrole = roledao.deleteRole(role);
            System.out.println("Delete Statrole=" + statusrole);
            out.print(statusrole);

        }

    }
}
