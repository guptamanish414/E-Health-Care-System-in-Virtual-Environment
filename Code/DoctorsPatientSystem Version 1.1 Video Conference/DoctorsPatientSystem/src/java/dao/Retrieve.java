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
public class Retrieve {
        PreparedStatement ps=null;
        ResultSet rs=null;
    public int avail(String id){
        int ls=0;
        Connection con=Connect.MyConnect();
        try{
            ps=con.prepareStatement("select loginStatus from doctorsinfo where id=?");
            ps.setString(1,id);
            rs=ps.executeQuery();
            while(rs.next()){
                ls=rs.getInt("loginStatus");
            }
        }catch(Exception e){}
        return ls;
        }

}
