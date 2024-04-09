/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.DoraemonComics;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import util.DBUtils;

/**
 *
 * @author BAO TRAN
 */
public class DoraemonComicsDAO {

    public static ArrayList<DoraemonComics> getDoraemon(String keyword, String searchby) throws Exception {
        ArrayList<DoraemonComics> list = new ArrayList<>();
        Connection cn = null;
        cn = DBUtils.makeConnection();
        if (cn != null && searchby != null) {
            String sql = "select DoID,DoName,price,imgPath,description,status,DoraemonComics.CateID as 'CateID', CateName\n"
                    + "from DoraemonComics join Categories on DoraemonComics.CateID=Categories.CateID\n";
            if (searchby.equalsIgnoreCase("byname")) {
                sql = sql + "where DoraemonComics.DoName LIKE ?";
            } else {
                sql = sql + "where CateName LIKE ?";
            }
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, "%" + keyword + "%");
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    int id = rs.getInt("DoID");
                    String name = rs.getString("DoName");
                    int price = rs.getInt("price");
                    String imgpath = rs.getString("imgPath");
                    String description = rs.getString("description");
                    int status = rs.getInt("status");
                    int cateid = rs.getInt("CateID");
                    String catename = rs.getString("CateName");
                    DoraemonComics doraemon = new DoraemonComics(id, name, price, imgpath,
                            description, status, cateid, catename);
                    list.add(doraemon);
                }
            }
            cn.close();
        }
        return list;
    }

    public static DoraemonComics getDoraemons(int pid) throws Exception {
        DoraemonComics p = null;
        //Todo
        Connection cn = DBUtils.makeConnection();
        if (cn != null) {
            String sql = "select DoID,DoName,price,imgPath,description,status,DoraemonComics.CateID as 'CateID',CateName\n"
                    + "from DoraemonComics, Categories\n"
                    + "where DoraemonComics.CateID=Categories.CateID and DoID=?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, pid);
            ResultSet rs = pst.executeQuery();
            if (rs != null && rs.next()) {
                pid = rs.getInt("DoID");
                String name = rs.getString("DoName");
                int price = rs.getInt("price");
                String imgpath = rs.getString("imgPath");
                String description = rs.getString("description");
                int status = rs.getInt("status");
                int cateid = rs.getInt("cateid");
                String catename = rs.getString("CateName");
                p = new DoraemonComics(pid, name, price, imgpath, description, status, cateid, catename);
            }
            cn.close();
        }
        return p;
    }

    public static ArrayList<DoraemonComics> getSearchDoraemon(String info) throws Exception {
        ArrayList<DoraemonComics> list = new ArrayList<>();
        Connection cn = DBUtils.makeConnection();
        if (cn != null) {
            String sql = "select DoID,DoName,price,imgPath,description,status,DoraemonComics.CateID as 'CateID', CateName\n"
                    + "from DoraemonComics join Categories on DoraemonComics.CateID=Categories.CateID\n"
                    + "where DoName LIKE ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, "%" + info + "%");
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    int id = rs.getInt("DoID");
                    String name = rs.getString("DoName");
                    int price = rs.getInt("price");
                    String imgpath = rs.getString("imgPath");
                    String description = rs.getString("description");
                    int status = rs.getInt("status");
                    int cateid = rs.getInt("CateID");
                    String catename = rs.getString("CateName");
                    DoraemonComics doraemon = new DoraemonComics(id, name, price, imgpath, description, status, cateid, catename);
                    list.add(doraemon);
                }
            }
        }
        return list;
    }

    public static boolean updateDoraemonStatus(int pid, int status) throws Exception {
        Connection cn = DBUtils.makeConnection();
        boolean flag = false;
        if (cn != null) {
            String sql = "update DoraemonComics\n"
                    + "set status=?\n"
                    + "where DoID=?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, status);
            pst.setInt(2, pid);
            try {
                flag = pst.executeUpdate() == 1;
            } catch (SQLException e) {
                return false;
            }
            cn.close();
        }
        return flag;
    }

    public static boolean addNewDoraemon(String name, String price, String imgpath,
            String description, String cateid) throws Exception {
        boolean flag = false;
        Connection cn = DBUtils.makeConnection();
        if (cn != null) {
            String sql = "insert into [dbo].[DoraemonComics]([DoName],[price],[imgPath],[description],[status],[CateID])\n"
                    + "values(?,?,?,?,1,?)";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, price);
            pst.setString(3, imgpath);
            pst.setString(4, description);
            pst.setString(5, cateid);
            try {
                flag = pst.executeUpdate() == 1;
            } catch (SQLException e) {
                return false;
            }
            cn.close();
        }
        return flag;
    }

    public static boolean checkDoraemonName(String name) throws Exception {
        boolean flag = false;
        Connection cn = DBUtils.makeConnection();
        if (cn != null) {
            String sql = "select * from DoraemonComics where DoName=?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, name);
            ResultSet rs = pst.executeQuery();
            if (rs != null && rs.next()) {
                flag = true;
            }
            cn.close();
        }
        return flag;
    }
    
    public static boolean updateDoraeomon(String pid, String pname, String price, String imgpath,
            String description, String cateid) throws Exception {
        boolean flag = false;
        Connection cn = DBUtils.makeConnection();
        if (cn != null) {
            String sql = "update DoraemonComics\n"
                    + "set [DoName]=?,[price]=?,[imgPath]=?,[description]=?,[CateID]=?\n"
                    + "where DoID=?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, pname);
            pst.setString(2, price);
            pst.setString(3, imgpath);
            pst.setString(4, description);
            pst.setString(5, cateid);
            pst.setString(6, pid);
            try{
                flag = pst.executeUpdate() == 1;
            }catch(SQLException e){
                return false;
            }
            cn.close();
        }
        return flag;
    }
    
    public static ArrayList<String> getImgPath() throws Exception{
        ArrayList<String> imgList = new ArrayList<>();
        Connection cn = DBUtils.makeConnection();
        if (cn != null){
            String sql = "select distinct [imgPath] from [dbo].[DoraemonComics]";
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs != null && rs.next()){
                imgList.add(rs.getString("imgPath"));
            }
            cn.close();
        }
        return imgList;
    }

}
