/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Product;
import model.Category;

/**
 *
 * @author ROG STRIX
 */
public class ProductDao implements Serializable {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from tblSanPham where dongia>0 order by dongia desc";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getFloat(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteProductByTrangThai(String masp, boolean prole) {
        String query = "delete from tblSanPham\n"
                + "where masp = ? and trangthai = 'False'";
        try {
            con = new DBContext().getConnection(); // ket noi' 
            ps = con.prepareStatement(query);
            ps.setString(1, masp);
            ps.setBoolean(1, prole);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public List<Category> getAllCategory() {
        List<Category> listC = new ArrayList<>();
        String sql = "Select * from tblDanhmuc";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                listC.add(new Category(rs.getString(1),
                        rs.getString(2),
                        rs.getBoolean(3)));
            }
        } catch (Exception e) {
        }
        return listC;
    }

    public List<Product> getProductByCategory(String madm) {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from tblSanPham\n"
                + "where madm = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, madm);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getFloat(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductById(String masp) {

        String sql = "Select * from tblSanPham\n"
                + "where masp = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, masp);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getFloat(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Product> getProductByName(String txtSearchValue) {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from tblSanPham\n"
                + "where tensp like ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, "%" + txtSearchValue + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getFloat(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteProduct(String masp) {
        String sql = "delete from tblSanPham\n"
                + "where masp = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, masp);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String masp, String tensp, String mota, String soluong, String dongia, String hinhanh, String trangthai, String madm) {
        String sql = "Insert tblSanPham\n"
                + "(masp, tensp, mota, soluong, dongia, hinhanh, trangthai, madm)\n"
                + "values(?,?,?,?,?,?,?,?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, masp);
            ps.setString(2, tensp);
            ps.setString(3, mota);
            ps.setString(4, soluong);
            ps.setString(5, dongia);
            ps.setString(6, hinhanh);
            ps.setString(7, trangthai);
            ps.setString(8, madm);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void EditProduct(String tensp, String mota, String soluong, String dongia, String hinhanh, String trangthai, String madm, String masp) {
        String sql = "update tblSanPham\n"
                + "set tensp = ?,\n"
                + "mota = ?,\n"
                + "soluong = ?,\n"
                + "dongia = ?,\n"
                + "hinhanh = ?,\n"
                + "trangthai = ?,\n"
                + "madm = ?\n"
                + "where masp = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, tensp);
            ps.setString(2, mota);
            ps.setString(3, soluong);
            ps.setString(4, dongia);
            ps.setString(5, hinhanh);
            ps.setString(6, trangthai);
            ps.setString(7, madm);
            ps.setString(8, masp);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }



    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        //List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        for (Category o : listC) {
            System.out.println(o);

        }

    }
}
