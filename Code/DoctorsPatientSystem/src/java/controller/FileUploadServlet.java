/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import com.lowagie.text.Document;
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
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.FormUtils;
import dto.DocDto;
import dto.TestForm;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class FileUploadServlet extends HttpServlet {
    private static final long serialVersionUID = 5334402393174853293L;

    private static final String UPLOAD_ERROR = "Error while processing values in request object!";
    private static final String FAILURE_MSG = "Error while uploading file!";
    File filenm2;

    private ServletFileUpload handler;

    @Override
    public void init() throws ServletException {
        super.init();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        handler = new ServletFileUpload(factory);
    }

    @Override
    public void destroy() {
        super.destroy();
        handler = null;
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        try {
            TestForm form = FormUtils.getTestForm(request, handler);
            boolean writeToFile=true;
           if (writeToFile) {
               String path=getServletContext().getRealPath("/");
               String path2=path.concat(form.getName().concat(".html"));
               path+=form.getDocument().getName();
               File f1=null;
               FileOutputStream fs=null;
               File uploadedFile = new File(path);
               DocDao ob1=new DocDao();
               int c=ob1.validPatients(form.getName());
                                if(c==1){
                                     
                                //ob1.setPath((form.getDocument().getName()).split("\\.")[0],path);
                                    ob1.setPath(form.getName(),path2);
                                //File new1=new File(path1);
                                //uploadedFile.renameTo(new1);


               form.getDocument().write(uploadedFile);
              
                filenm2=new File(path2);
                InputStream inStream;
                OutputStream outStream;
                inStream = new FileInputStream(uploadedFile);
    	    outStream = new FileOutputStream(filenm2);

    	    byte[] buffer = new byte[1024];

    	    int length;
    	   
    	    while ((length = inStream.read(buffer)) > 0){

    	    	outStream.write(buffer, 0, length);

    	    }

    	    inStream.close();
    	    outStream.close();
               //uploadedFile.renameTo(filenm2);
              f1=new File((getServletContext().getRealPath("/")).concat("Prescription".concat(form.getName())).concat(".pdf"));
              fs=new FileOutputStream(f1);
               File img2=dao.ImageDoc.convert(filenm2.getPath());
             Rectangle pageSize=new Rectangle(1500,1600);
      Document pdfdoc=new Document(pageSize);
      //pdfdoc.open();
      //String name="mypdf.pdf";
      PdfWriter writer=PdfWriter.getInstance(pdfdoc,fs);

      pdfdoc.open();
    Image imgnew = Image.getInstance(img2.getPath());
    pdfdoc.add(imgnew);

   /* BaseFont bf = BaseFont.createFont(BaseFont.HELVETICA, BaseFont.WINANSI, BaseFont.NOT_EMBEDDED);
    Font ff=new Font();
    ff.setSize((float) 30.00);
    PdfContentByte under, over;
     String pathForSign=new DocDao().getPath(form.getDocname());
     Image img1 = Image.getInstance(pathForSign);
     img1.setAbsolutePosition(200,400);
     pdfdoc.add(img1);
     DocDto ob=new DocDao().getInfo(form.getDocname());

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
     pdfdoc.add(table);*/

     pdfdoc.close();
                                }
            //request.setAttribute("DATA", form);
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
            request.setAttribute("ERROR", UPLOAD_ERROR);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("ERROR", FAILURE_MSG);
        }
        response.sendRedirect("welcome.jsp");
        /*request.getRequestDispatcher("/WEB-INF/jsp/form-data.jsp").forward(
                request, response);*/
    }
}
