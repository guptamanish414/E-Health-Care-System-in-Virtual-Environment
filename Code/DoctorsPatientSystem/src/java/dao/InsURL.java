/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import model.Connect;

/**
 *
 * @author ASOK2
 */
public class InsURL {
    PreparedStatement ps=null;
    public void insertURL(String url,String id){
            Connection con=Connect.MyConnect();
            try{
                ps=con.prepareStatement("update doctorsinfo set path=? where id=?");
                ps.setString(1, url);
                ps.setString(2, id);
                ps.executeUpdate();
            }catch(Exception e){}
    }

}
