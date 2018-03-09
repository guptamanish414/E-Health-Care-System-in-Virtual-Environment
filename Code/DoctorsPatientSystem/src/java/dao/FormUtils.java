/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

/**
 *
 * @author ASOK2
 */
import dto.TestForm;
    import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FormUtils {

    private static void processFormField(TestForm form, FileItem item)
            throws IllegalArgumentException, IllegalAccessException {
        try {
            BeanUtils.setProperty(form, item.getFieldName(), item.getString());
        } catch (InvocationTargetException e) {
            // error while populating bean
            return;
        }
    }

    private static TestForm processFileItems(List<FileItem> items)
            throws IllegalArgumentException, IllegalAccessException {
        TestForm form = new TestForm();
        for (FileItem item : items) {
            if (item.isFormField()) {
                processFormField(form, item);
                continue;
            }
            form.setDocument(item);
        }
        return form;
    }

    @SuppressWarnings("unchecked")
    public static TestForm getTestForm(HttpServletRequest request,
            ServletFileUpload handler) throws FileUploadException,
            IllegalArgumentException, IllegalAccessException {
        return processFileItems(handler.parseRequest(request));
    }
}

