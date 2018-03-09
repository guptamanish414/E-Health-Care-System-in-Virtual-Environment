/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;


import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.File;
import java.io.IOException;
import java.net.URL;
//import java.nio.file.Path;

/**
 *
 * @author Somdatta
 */
public class ImageDoc {
     private static volatile boolean loaded;
    public static File convert(String path) throws IOException {
        loaded = false;
        //File ff=new File(path);
        //String pth=ff.getAbsolutePath();
        //System.out.println(pth);
        int p=path.lastIndexOf("\\");
        String path2=path.substring(0,p);
       // URL url = new URL("file:///C:/Users/Somdatta/Documents/NetBeansProjects/ImageDoc/Prescription.html");
         URL url = new URL("file:///"+path);
         //String p=path.substring(0,82);
         //String p="..\\web\\tempo";
         System.out.println(url);
        JEditorPane editorPane = new JEditorPane();
        editorPane.addPropertyChangeListener(new PropertyChangeListener() {
            public void propertyChange(PropertyChangeEvent evt) {
                if (evt.getPropertyName().equals("page")) {
                    loaded = true;
                }
            }
        });
        editorPane.setPage(url);
        while (!loaded) {
            Thread.yield();
        }
        Integer rand=(int) Math.random();
        String str=rand.toString();
        File file = new File(path2.concat("\\out".concat(str)).concat(".png"));
       //File file = new File(("out".concat(str)).concat(".png"));
        BufferedImage img=componentToImage(editorPane, file);
        return file;

    }

public static BufferedImage componentToImage(Component comp, File file) throws IOException {
        Dimension prefSize = comp.getPreferredSize();
        System.out.println("prefSize = " + prefSize);
        BufferedImage img = new BufferedImage(prefSize.width,prefSize.height,
                                              BufferedImage.TYPE_INT_ARGB);
        Graphics graphics = img.getGraphics();
        //comp.setSize(prefSize);
         comp.setSize(1280,1400);
        comp.paint(graphics);
        ImageIO.write(img, "png", file);
        return img;
    }
}
