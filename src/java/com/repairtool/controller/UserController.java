/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repairtool.controller;

import com.repairtool.dao.UserDao;
import com.repairtool.dao.UserDaoImpl;
import com.repairtool.model.User;
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
@WebServlet(name = "UserController", urlPatterns = {"/UserController"})
public class UserController extends HttpServlet {

    private User us = new User();
    private final UserDaoImpl usdao;
    private EpochtoReadableDate ed = new EpochtoReadableDate();
    private String accountID = "";
    private String userID = "";
    private String roleID = "";
    private String emailID = "";
    private String password = "";
    private String creationTime = "";
    private String updationTime = "";
    private String status = "";

    public UserController() throws Exception {
        this.usdao = new UserDaoImpl();
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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserController at " + request.getContextPath() + "</h1>");
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

            accountID = request.getParameter("accountID");
            userID = request.getParameter("userID");
            roleID = request.getParameter("roleID");
            emailID = request.getParameter("emailID");
            password = request.getParameter("password");
            creationTime = ed.currentEpoch() + "";
            updationTime = ed.currentEpoch() + "";
            status = usdao.addUser(us);

            System.out.println("add Status=" + status);
            out.print(status);

        } else if (requestType.equalsIgnoreCase("edit")) {

            accountID = request.getParameter("accountID");
            userID = request.getParameter("userID");
            roleID = request.getParameter("roleID");
            emailID = request.getParameter("emailID");
            password = request.getParameter("password");
            creationTime = ed.currentEpoch() + "";
            updationTime = ed.currentEpoch() + "";

            status = usdao.updateUser(us);
            System.out.println("Edit Status=" + status);
            out.print(status);

        } else if (requestType.equalsIgnoreCase("delete")) {
            accountID = request.getParameter("accountID");
            userID = request.getParameter("userID");
            status = usdao.deleteUser(us);
            System.out.println("Delete Status=" + status);
            out.print(status);

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
