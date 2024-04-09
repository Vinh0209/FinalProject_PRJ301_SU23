/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;

/**
 *
 * @author BAO TRAN
 */

public class OrderDetail implements Serializable{
    private int orderDetailID;
    private int orderID;
    private int doraemonID;
    private String doraemonName;
    private int price;
    private String ImgPath;
    private int quantity;

    public OrderDetail() {
    }

    public OrderDetail(int orderDetailID, int orderID, int doraemonID, String doraemonName, int price, String ImgPath, int quantity) {
        this.orderDetailID = orderDetailID;
        this.orderID = orderID;
        this.doraemonID = doraemonID;
        this.doraemonName = doraemonName;
        this.price = price;
        this.ImgPath = ImgPath;
        this.quantity = quantity;
    }

    public int getOrderDetailID() {
        return orderDetailID;
    }

    public void setOrderDetailID(int orderDetailID) {
        this.orderDetailID = orderDetailID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getDoraemonID() {
        return doraemonID;
    }

    public void setDoraemonID(int doraemonID) {
        this.doraemonID = doraemonID;
    }

    public String getDoraemonName() {
        return doraemonName;
    }

    public void setDoraemonName(String doraemonName) {
        this.doraemonName = doraemonName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImgPath() {
        return ImgPath;
    }

    public void setImgPath(String ImgPath) {
        this.ImgPath = ImgPath;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
