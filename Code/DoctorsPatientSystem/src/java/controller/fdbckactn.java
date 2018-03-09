/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import dao.DocDao;
import dto.DocDto;
import dto.feedbackdto;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.binary.Base64;

/**
 *
 * @author Somdatta
 */
public class fdbckactn extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           // HttpServletRequestWrapper wrappedRequest = new HttpServletRequestWrapper(request);
            //HttpServletRequestWrapper requestWithWrapper = (HttpServletRequestWrapper) wrappedRequest.getRequest();

           
           // String imageString = wrappedRequest.getParameter("data");
            feedbackdto obk=new feedbackdto();

           
            obk.setEmail(request.getParameter("email"));
            obk.setValue2(request.getParameter("value2"));
            obk.setValue4(request.getParameter("value4"));
            obk.setValue6(request.getParameter("value6"));
            obk.setValue8(request.getParameter("value8"));
            obk.setValue10(request.getParameter("value10"));
            obk.setValue12(request.getParameter("value12"));
             obk.setValue14(request.getParameter("value14"));
              obk.setValue16(request.getParameter("value16"));
           // String path=getServletContext().getRealPath("/");
            
          // ob.setPath(path);
           DocDao ob1=new DocDao();
           ob1.insertfdbck(obk);
            
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}