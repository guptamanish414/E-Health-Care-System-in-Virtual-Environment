/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.File;
//import javax.persistence.criteria.Path;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DownloadFileController extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 String filename = "mm.txt";
              String filepath="C://";
		//String filepath="http://localhost:31947/";
		  response.setContentType("APPLICATION/OCTET-STREAM");
		  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");
		 // java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);
                  java.io.FileInputStream fileInputStream = new java.io.FileInputStream( filepath+filename);

		  int i;
		  while ((i=fileInputStream.read()) != -1) {
		    out.write(i);
		  }
		  fileInputStream.close();
		  out.close();
	}

}

