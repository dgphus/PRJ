/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author ROG STRIX
 */
public class AccountDao {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Account checklogin(String tentk, String matkhau){
        try{
            String sql = "select * from tblTaiKhoan where tentk =? and matkhau = ?";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, tentk);
            ps.setString(2, matkhau);
            rs = ps.executeQuery();
            while(rs.next()){
                Account users = new Account(rs.getString(1), 
                        rs.getString(2), 
                        rs.getBoolean(3),
                        rs.getString(4));
                return users;
            }
        }catch(Exception e){
            
        }
        return null;
    }
}
