/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

//import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
//import com.sun.xml.internal.messaging.saaj.util.Base64;
//import com.sun.xml.internal.messaging.saaj.util.ByteInputStream;
import dao.DocDao;
import dto.DocDto;
//import java.awt.image.BufferedImage;
//import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
//import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.binary.Base64;
//import org.apache.catalina.connector.RequestFacade;
//import org.apache.tomcat.util.buf.Base64;
//import org.apache.catalina.util.Base64;

/**
 *
 * @author ASOK2
 */
public class SaveImageServlet extends HttpServlet {
   
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
            HttpServletRequestWrapper wrappedRequest = new HttpServletRequestWrapper(request);
            //HttpServletRequestWrapper requestWithWrapper = (HttpServletRequestWrapper) wrappedRequest.getRequest();

            if(wrappedRequest.getParameter("type").equals("Doctors")){
            String imageString = wrappedRequest.getParameter("data");
            DocDto ob=new DocDto();
            ob.setName(wrappedRequest.getParameter("name"));
            ob.setId(wrappedRequest.getParameter("id"));
            ob.setPassword(wrappedRequest.getParameter("pswd"));
            ob.setEmail(wrappedRequest.getParameter("mail"));
            ob.setType(wrappedRequest.getParameter("type"));
            ob.setInstitution(wrappedRequest.getParameter("ofc"));
            ob.setOccupation(wrappedRequest.getParameter("job"));
            String address=wrappedRequest.getParameter("addr");
            address=address.concat(wrappedRequest.getParameter("place"));
            address=address.concat(wrappedRequest.getParameter("state"));
            address=address.concat(wrappedRequest.getParameter("country"));
            address=address.concat(wrappedRequest.getParameter("zip"));
            imageString = imageString.substring("data:image/jpg;base64,".length());
            ob.setAddress(address);
            ob.setPhone(wrappedRequest.getParameter("phone"));
           //ob.setOccupation(wrappedRequest.getParameter("Occupation"));
           //ob.setInstitution(wrappedRequest.getParameter("Institution"));
            byte[] contentData = imageString.getBytes();
            byte[] decodedData = Base64.decodeBase64(contentData);
           /* BufferedImage img2=ImageIO.read(new ByteArrayInputStream(decodedData));
            File outputimg=new File("testimg.jpg");
            ImageIO.write(img2, "jpg", outputimg);*/
            String path=getServletContext().getRealPath("/");
            path=path.concat("signature\\");
            String path2=getServletContext().getRealPath("/");
            path2=path;
            path2=path2.concat(ob.getId().concat(".jpg"));
            path=path.concat("test".concat(".jpg"));
            File img4=new File(path);
            File im5=new File(path2);
            
           FileOutputStream fos = new FileOutputStream(img4);
           fos.write(decodedData);
           fos.close();
           img4.renameTo(im5);
           ob.setPath(path2);
           DocDao ob1=new DocDao();
           int c=ob1.insert(ob);
            } else   if(wrappedRequest.getParameter("type").equals("Patients")) {
            DocDto ob=new DocDto();
            ob.setName(wrappedRequest.getParameter("name"));
            ob.setId(wrappedRequest.getParameter("id"));
            ob.setPassword(wrappedRequest.getParameter("pswd"));
            ob.setEmail(wrappedRequest.getParameter("mail"));
            ob.setType(wrappedRequest.getParameter("type"));
            String address=wrappedRequest.getParameter("addr");
            address=address.concat(wrappedRequest.getParameter("place"));
            address=address.concat(wrappedRequest.getParameter("state"));
            address=address.concat(wrappedRequest.getParameter("country"));
            address=address.concat(wrappedRequest.getParameter("zip"));
            ob.setAddress(address);
            ob.setPhone(wrappedRequest.getParameter("phone"));
           ob.setOccupation(wrappedRequest.getParameter("job"));
           ob.setInstitution(wrappedRequest.getParameter("ofc"));
            ob.setPath("");
           DocDao ob1=new DocDao();
           int c=ob1.insert(ob);
            }
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
