/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import dto.ChatDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Connect;

/**
 *
 * @author ASOK2
 */
public class Message {
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
    public void recieve(ChatDto ob){
        try {
            con = Connect.MyConnect();
            ps=con.prepareStatement("select * from chat where sender=? and reciever=?");
            ps.setString(1,ob.getSender());
            ps.setString(2,ob.getReciever());
            rs=ps.executeQuery();
            boolean c=false;
            if(rs.next()){
            c=true;
            }
            if(c==true){
                ps=con.prepareStatement("update chat set timestamp=?,message=? where sender=? and reciever=?");
                ps.setTimestamp(1, ob.getTs());
                ps.setString(2,ob.getMsg());
                ps.setString(3,ob.getSender());
                ps.setString(4,ob.getReciever());
                ps.executeUpdate();
            }
            else{
            ps = con.prepareStatement("insert into chat(sender,reciever,message,timestamp)values(?,?,?,?)");
            ps.setString(1,ob.getSender());
            ps.setString(2,ob.getReciever());
            ps.setString(3,ob.getMsg());
            ps.setTimestamp(4,ob.getTs());
            ps.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Message.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public String send(ChatDto ob){
        String message=null;
        try {
            con = Connect.MyConnect();
            ps=con.prepareStatement("select * from chat where sender=? and reciever=?");
            ps.setString(1,ob.getSender());
            ps.setString(2,ob.getReciever());
            rs=ps.executeQuery();
            boolean c=false;
            if(rs.next()){
            c=true;
            }
            if(c==true){
                ps=con.prepareStatement("select message from chat where sender=? and reciever=?");
                //ps.setTimestamp(1, ob.getTs());
                //ps.setString(2,ob.getMsg());
                ps.setString(1,ob.getSender());
                ps.setString(2,ob.getReciever());
                //ps.executeUpdate();
                rs=ps.executeQuery();
                while(rs.next()){
                    message=rs.getString(1);
                }
                return message;
            }
            else{
            return message;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Message.class.getName()).log(Level.SEVERE, null, ex);
        }
        return message;
    }

    public void delete(String id){
        try {
            con = Connect.MyConnect();
            ps = con.prepareStatement("delete from chat where sender=?");
            ps.setString(1, id);
            ps.executeUpdate();
            ps = con.prepareStatement("delete from chat where reciever=?");
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Message.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
