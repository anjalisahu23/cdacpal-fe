/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author anjali
 */
@Entity
public class Student {
    
    @Id
    @Column(name = "rollnumber")
    int roll;
    @Column(name = "name")
    String name;
    @Column(name = "branch")
    String branch;
    @Column(name = "email")
    String email;
     @Column(name = "password")
    String pass;
    @Column(name="address")
    String Addr;

    public int getRoll() {
        return roll;
    }

    public void setRoll(int roll) {
        this.roll = roll;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getAddr() {
        return Addr;
    }

    public void setAddr(String Addr) {
        this.Addr = Addr;
    }

    @Override
    public String toString() {
        return "Student{" + "roll=" + roll + ", name=" + name + ", branch=" + branch + ", email=" + email + ", pass=" + pass + ", Addr=" + Addr + '}';
    }
   

   
    
}
