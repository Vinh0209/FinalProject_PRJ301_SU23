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
public class Category implements Serializable{
    private int cateID;
    private String cateName;
    
    public Category(){
        
    }

    public Category(int cateID, String cateName) {
        this.cateID = cateID;
        this.cateName = cateName;
    }

    public int getCateID() {
        return cateID;
    }

    public String getCateName() {
        return cateName;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }
    
}
