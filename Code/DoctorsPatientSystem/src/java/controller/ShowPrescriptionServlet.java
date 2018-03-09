/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.Image;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Rectangle;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.PdfContentByte;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import dao.DocDao;
import dto.DocDto;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Somdatta
 */
public class ShowPrescriptionServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, DocumentException {

        response.setContentType("APPLICATION/PDF");
		PrintWriter out = response.getWriter();
                String patname=request.getParameter("patname");
        String docid = request.getParameter("docid");
          String filepath = new DocDao().getPath(patname);
         File img2=dao.ImageDoc.convert(filepath);
             Rectangle pageSize=new Rectangle(1500,1600);

            Document pdfdoc=new Document(pageSize);

                 
                     File f1=new File((getServletContext().getRealPath("/")).concat("Prescription".concat(patname)).concat(".pdf"));
                   
           
         PdfWriter writer=PdfWriter.getInstance(pdfdoc,new FileOutputStream(f1));
      pdfdoc.open();
                   String pathForSign=new DocDao().getPath(docid);
     Image img1 = Image.getInstance(pathForSign);
     img1.setAbsolutePosition(200,400);
      Image imgnew = Image.getInstance(img2.getPath());
    pdfdoc.add(imgnew);
     pdfdoc.add(img1);
      BaseFont bf = BaseFont.createFont(BaseFont.HELVETICA, BaseFont.WINANSI, BaseFont.NOT_EMBEDDED);
    Font ff=new Font();
    ff.setSize((float) 30.00);
    PdfContentByte under, over;
      DocDto ob=new DocDao().getInfo(docid);

     String allinfo="Id:".concat(ob.getId());
     allinfo=allinfo.concat(" ,Name:".concat(ob.getName()));
     allinfo=allinfo.concat(" ,Email:".concat(ob.getEmail()));
     allinfo=allinfo.concat(" ,Phone:".concat(ob.getPhone()));
     allinfo=allinfo.concat(" ,Institution:".concat(ob.getInstitution()));
    Paragraph ph=new Paragraph(allinfo,ff);
    PdfPCell phrase1=new PdfPCell();
    phrase1.setFixedHeight((float) 100.00);
    phrase1.addElement(ph);
     PdfPTable table = new PdfPTable(1);

    table.setHorizontalAlignment(Element.ALIGN_LEFT);
    table.addCell(phrase1);
     pdfdoc.add(table);




	pdfdoc.close();
           

		 response.setHeader("Content-Disposition", "attachment; filename=\"" + ("Prescription".concat(patname)).concat(".pdf") + "\"");

            java.io.FileInputStream fileInputStream = new java.io.FileInputStream((getServletContext().getRealPath("/")).concat("Prescription".concat(patname)).concat(".pdf"));
		
		  int i;
		  while ((i=fileInputStream.read()) != -1) {
		    out.write(i);
		  }
		  fileInputStream.close();
		  out.close();

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
        try {
            processRequest(request, response);
        } catch (DocumentException ex) {
            Logger.getLogger(ShowPrescriptionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (DocumentException ex) {
            Logger.getLogger(ShowPrescriptionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
