/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DocDao;
import java.io.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.*;
//import model.GenerateId;

/**
 *
 * @author student
 */
public class UploadImageController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
     public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        try {
            processRequest(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(UploadImageController.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String imagePath = null;
            String contentId = null;
            String fileName=null;
            String re=request.getParameter("id");

            //contentId = new GenerateId().getId();
           // contentId = contentId.substring(0, 10);

        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if(isMultipart) {
            try {
                // Create a factory for disk-based file items
                FileItemFactory factory = new DiskFileItemFactory();

                // Create a new file upload handler
                ServletFileUpload upload = new ServletFileUpload(factory);

                // Parse the request
                List /* FileItem */ items = upload.parseRequest(request);

                // Process the uploaded items
                Iterator iter = items.iterator();
                while (iter.hasNext()) {
                    FileItem item = (FileItem) iter.next();
                    if (item.isFormField()) {
                        // Process a regular form field
                        if (item.isFormField()) {
                            String name = item.getFieldName();
                            String value = item.getString();
                            /* Getting Form value*/
                            /*
                            if("contentTitle".equals(name)){
                                contentTitle=value;
                            }
                            if("elm1".equals(name)){
                                content=value;
                            }
			    if("linkText".equals(name)){
                                linkText=value;
                            }
                             **/
                        }
                    } else {
                        // Process a file upload
                        if (!item.isFormField()) {
                            fileName = item.getName();
                           // String sd=request.getParameter("patid");
                            //fileName=request.getParameter("patid").concat("txt");
                            String split[]=fileName.split("\\.");
                            String ext="";
                            for(String s:split) {
                                ext=s;
                            }
                            imagePath=fileName;
                            // Process a file upload
                            boolean writeToFile=true;
                            if (writeToFile) {
                                String path=getServletContext().getRealPath("/");
                                path+=imagePath;
                                String path1=getServletContext().getRealPath("/");
                                path1+=re.concat(".txt");
                                out.print(path.toString());
                                DocDao ob1=new DocDao();
                                /*String path1=getServletContext().getRealPath("/");
                                path1+=re.concat(".txt");*/
                               //int c=ob1.validPatients(imagePath.split("\\.")[0]);
                                int c=ob1.validPatients(re);
                                if(c==1){
                                ob1.setPath(imagePath.split("\\.")[0],path);
                                File uploadedFile = new File(path);
                                //File new1=new File(path1);
                                //uploadedFile.renameTo(new1);
                                item.write(uploadedFile);
                               }
                            } else {
                                InputStream uploadedStream = item.getInputStream();
                                uploadedStream.close();
                            }
                        }
                    }
                }
                response.sendRedirect("welcome.jsp");

            } catch(Exception ex) {
                out.print(ex.toString());
            }

            /*  Look for Adding Database  */
            /*
        if(contentTitle!=null&&content!=null&&imagePath!=null&&linkText!=null) {
            		ContentDetailsDTO ct=new ContentDetailsDTO();
				ct.setContentId(contentId);
				ct.setContentTitle(contentTitle);
				ct.setContent(content);
				ct.setLinkText(linkText);
				ct.setImagePath(imagePath);
				ct.setLastUpdate(lastUpdate);

				ContentDetailsDAO c=new ContentDetailsDAO();
				boolean b=c.addContent(ct);
				HttpSession session=request.getSession(true);
       		      session.setAttribute("cmd","Contented added successfylly");

                       response.sendRedirect("/CMS/admin/AdminHome.jsp");
        }
        */
        }
    }
        finally{
            out.close();

        }
    }
}

