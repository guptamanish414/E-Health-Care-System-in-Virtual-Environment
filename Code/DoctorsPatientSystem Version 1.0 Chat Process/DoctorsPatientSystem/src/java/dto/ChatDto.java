/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dto;

import java.sql.Timestamp;

/**
 *
 * @author ASOK2
 */
public class ChatDto {
    String sender=null;
    String reciever=null;
    String msg=null;
    Timestamp ts=null;

    public Timestamp getTs() {
        return ts;
    }

    public void setTs(Timestamp ts) {
        this.ts = ts;
    }
    
    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getReciever() {
        return reciever;
    }

    public void setReciever(String reciever) {
        this.reciever = reciever;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }


}
