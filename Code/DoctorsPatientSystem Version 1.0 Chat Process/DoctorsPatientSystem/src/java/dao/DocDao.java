 /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import dto.DocDto;
import dto.feedbackdto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Connect;

/**
 *
 * @author ASOK2
 */
public class DocDao {

    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    public int insert(DocDto ob){
        try {
            con=Connect.MyConnect();
           // if(ob.getType().equals("Doctors")){
            ps = con.prepareStatement("insert into doctorsinfo(id,name,pswd,loginStatus,path,type,email,Address,Phone,Occupation,Institution,active)values(?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,ob.getId());
            ps.setString(2,ob.getName());
            ps.setString(3,ob.getPassword());
            ps.setInt(4,0);
            ps.setString(5,ob.getPath());
            ps.setString(6,ob.getType());
            ps.setString(7,ob.getEmail());
            ps.setString(8,ob.getAddress());
            ps.setString(9,ob.getPhone());
            ps.setString(10, ob.getOccupation());
            ps.setString(11, ob.getInstitution());
            ps.setInt(12,0);
           // ps.setString(13,ob.getfeedback());
            //}
           /*else{
                ps= con.prepareStatement("insert into doctorsinfo(id,name,password) values(?,?)");
                ps.setString(1,ob.getId());
                ps.setString(2,ob.getName());
                ps.setString(3,ob.getPassword());
            }*/
            int c=ps.executeUpdate();
            if(c==1){
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
     public int insertfdbck(feedbackdto obk){
        try {
            con=Connect.MyConnect();
           // if(ob.getType().equals("Doctors")){
            ps = con.prepareStatement("insert into feedback(mail,query2,query4,query5,query6,query7,query8,query10,query12)values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1,obk.getEmail());
            ps.setString(2,obk.getValue2());
            ps.setString(3,obk.getValue4());
            ps.setString(4,obk.getValue6());
            ps.setString(5,obk.getValue8());
            ps.setString(6,obk.getValue10());
            ps.setString(7,obk.getValue12());
            ps.setString(8,obk.getValue14());
            ps.setString(9, obk.getValue16());

           // ps.setString(13,ob.getfeedback());
            //}
           /*else{
                ps= con.prepareStatement("insert into doctorsinfo(id,name,password) values(?,?)");
                ps.setString(1,ob.getId());
                ps.setString(2,ob.getName());
                ps.setString(3,ob.getPassword());
            }*/
          int c=ps.executeUpdate();
            if(c==1){
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public int check(DocDto ob){
            con=null;
            ps=null;
            rs=null;
            String s=null;
        try {
            con = Connect.MyConnect();
            ps = con.prepareStatement("select * from doctorsinfo where id=?");
           //String s=ob.getId();
            //String u=ob.getPassword();
            ps.setString(1,ob.getId());
            //ps.setString(2,ob.getPassword());
            rs=ps.executeQuery();
            if(rs==null){
                return 0;
            }
            else{
                String t=ob.getPassword();
                while(rs.next()){
                s=rs.getString("pswd");}
                if(t.equals(s)){
                ps=con.prepareStatement("update doctorsinfo set loginStatus=? where id=?");
                ps.setBoolean(1, true);
                ps.setString(2, ob.getId());
                ps.executeUpdate();
                return 1;
                }
                else{
                    return 0;}
            }
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public Boolean isAvailable(String id){
        Boolean flag=false;
        try {
            con = Connect.MyConnect();
            ps = con.prepareStatement("select loginStatus from doctorsinfo where id=?");
            ps.setString(1,id);
            rs=ps.executeQuery();
            while(rs.next()){
                flag=rs.getBoolean(1);
            }
            if(flag){
                return flag;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flag;
    }
    public int validPatients(String id){
        con=Connect.MyConnect();
        try {
            ps = con.prepareStatement("select * from doctorsinfo where id=?");
            ps.setString(1,id);
            rs=ps.executeQuery();
            if(rs!=null){
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }
    public void setPath(String id,String s){
        con=Connect.MyConnect();
        try {
            ps = con.prepareStatement("update doctorsinfo set path=? where id=?");
            ps.setString(1,s);
            ps.setString(2,id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public String getPath(String id){
        String path=null;
        con=Connect.MyConnect();
        try {
            ps = con.prepareStatement("select path from doctorsinfo where id=?");
            ps.setString(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
                path=rs.getString("path");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return path;
    }
    public void logOut(String id){
        try {
            con = Connect.MyConnect();
            ps = con.prepareStatement("update doctorsinfo set loginStatus=0 where id=?");
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public DocDto getInfo(String id){
        DocDto ob=new DocDto();
        try {
            con = Connect.MyConnect();
            ps = con.prepareStatement("select * from doctorsinfo where id=?");
            ps.setString(1, id);
            rs=ps.executeQuery();
           // ob.setName(array.get(0));
            while(rs.next()){
                ob.setId(rs.getString("id"));
                ob.setName(rs.getString("name"));
                ob.setEmail(rs.getString("email"));
                ob.setPhone(rs.getString("Phone"));
                ob.setInstitution(rs.getString(("Institution")));

            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DocDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return ob;
    }
}
