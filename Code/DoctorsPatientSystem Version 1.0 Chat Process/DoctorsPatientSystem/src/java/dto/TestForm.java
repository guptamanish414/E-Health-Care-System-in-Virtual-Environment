/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dto;

/**
 *
 * @author ASOK2
 */
import org.apache.commons.fileupload.FileItem;

public class TestForm {
    private String name;
    
    private String docname;
    private FileItem document;
    public String getDocname() {
        return docname;
    }

    public void setDocname(String docname) {
        this.docname = docname;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public FileItem getDocument() {
        return document;
    }

    public void setDocument(FileItem document) {
        this.document = document;
    }
}