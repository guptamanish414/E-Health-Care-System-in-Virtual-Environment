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
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfStamper;
import com.lowagie.text.pdf.PdfWriter;
import dao.DocDao;
import dto.DocDto;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASOK2
 */
public class DownloadServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


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
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String filename = request.getParameter("filename");
            String docid = request.getParameter("docid");
            String s = filename.split("\\.")[0];
            String filepath = new DocDao().getPath(s);

           // PdfReader reader = new PdfReader(filepath);
            File f1=new File((getServletContext().getRealPath("/")).concat("Prescription".concat(s)).concat(".pdf"));
            FileOutputStream fs=new FileOutputStream(f1);
            //BufferedImage img2=dao.ImageDoc.convert(filepath);
            File img2=dao.ImageDoc.convert(filepath);
             Rectangle pageSize=new Rectangle(1500,1600);
      //String name="mypdf.pdf";
            Document pdfdoc=new Document(pageSize);
      //PdfWriter writer=PdfWriter.getInstance(pdfdoc, new FileOutputStream(filepath));
         PdfWriter writer=PdfWriter.getInstance(pdfdoc,fs);
      pdfdoc.open();
   Image imgnew = Image.getInstance(img2.getPath());
    pdfdoc.add(imgnew);

    BaseFont bf = BaseFont.createFont(BaseFont.HELVETICA, BaseFont.WINANSI, BaseFont.NOT_EMBEDDED);
    Font ff=new Font();
    ff.setSize((float) 30.00);
    PdfContentByte under, over;
     String pathForSign=new DocDao().getPath(docid);
     Image img1 = Image.getInstance(pathForSign);
     img1.setAbsolutePosition(200,400);
     pdfdoc.add(img1);
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
    //table.getDefaultCell().setPadding(5f); // Code 1
    table.setHorizontalAlignment(Element.ALIGN_LEFT);
    table.addCell(phrase1);
     pdfdoc.add(table);

     pdfdoc.close();


            /*PdfStamper stamper = new PdfStamper(reader,fs );
            Image img = Image.getInstance(new DocDao().getPath(docid));
            img.setAbsolutePosition(300, 120);
            BaseFont bf = BaseFont.createFont(BaseFont.HELVETICA, BaseFont.WINANSI, BaseFont.NOT_EMBEDDED);
            PdfContentByte under;
            PdfContentByte over;
            under = stamper.getUnderContent(1);
            under.addImage(img);
            int total = reader.getNumberOfPages() + 1;
            for (int i = 1; i < total; i++) {
            stamper.setRotateContents(false);
            under = stamper.getUnderContent(i);
            under.addImage(img);
            }
            stamper.close();*/
            response.setContentType("APPLICATION/PDF");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + ("Prescription".concat(s)).concat(".pdf") + "\"");
            java.io.FileInputStream fileInputStream = new java.io.FileInputStream((getServletContext().getRealPath("/")).concat("Prescription".concat(s)).concat(".pdf"));
            int i;
            while ((i = fileInputStream.read()) != -1) {
                out.write(i);
            }
            fileInputStream.close();
            String pathnew2=getServletContext().getRealPath("/");
            pathnew2=pathnew2.concat("Records\\");
            DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
            Date date = new Date();
//System.out.println(dateFormat.format(date));
            String dt=(docid.concat(s)).concat(dateFormat.format(date).toString());
            pathnew2=pathnew2.concat(dt.concat(".pdf"));
            File ff4=new File(pathnew2);
         // File fff=new File((getServletContext().getRealPath("/")).concat("Prescription".concat(s)).concat(".pdf"));
           f1.renameTo(ff4);
            out.close();
        } catch (DocumentException ex) {
            Logger.getLogger(DownloadServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
