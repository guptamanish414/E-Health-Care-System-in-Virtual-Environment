/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import dao.DocDao;
import dto.DocDto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASOK2
 */
public class LoginAction extends HttpServlet {
   
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
        
        DocDto ob= new DocDto();
        ob.setId(request.getParameter("id"));
        //ob.setName(request.getParameter("name"));
        ob.setPassword(request.getParameter("password").toString());
        ob.setType(request.getParameter("type"));
        if(ob.getId().equals("")||ob.getPassword().equals("")){
            response.sendRedirect("index.jsp?msg=UserID and Password cannot be blank&type="+ob.getType()+"");
        }
        else{
            DocDao ob1=new DocDao();
            if(ob1.check(ob)==1){
                if(ob.getType().equals("Doctors")){
                HttpSession session1=request.getSession();
                session1.setAttribute("id",ob.getId());
                response.sendRedirect("welcome.jsp");
                }
            else{
                HttpSession session2=request.getSession();
                session2.setAttribute("id",ob.getId());
                response.sendRedirect("welcomePatients.jsp");
            }
        }
            else{
                response.sendRedirect("index.jsp?msg=User Does not Exists&type="+ob.getType()+"");
            }
            //response.sendRedirect("index.jsp?msg=UserID or Password Wrong&type="+ob.getType()+"");
        }
        try {
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
