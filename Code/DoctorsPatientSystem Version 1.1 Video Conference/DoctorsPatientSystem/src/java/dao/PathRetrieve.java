/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Connect;

/**
 *
 * @author ASOK2
 */
public class PathRetrieve {
     PreparedStatement ps=null;
        ResultSet rs=null;

    public String getPath(String id){
        String path=null;
        Connection con=Connect.MyConnect();
        try{
            ps=con.prepareStatement("select path from doctorsinfo where id=?");
            ps.setString(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
               path=rs.getString("path");
            }
        }catch(Exception ex){}
        return path;
    }
}
