package com.demo.entities;

import javax.persistence.*;

@Entity
@Table(name = "account", schema = "heroku_8f21e8f014371d8", catalog = "")
public class AccountEntity implements java.io.Serializable {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "username", nullable = false, length = 250)
    private String username;
    @Basic
    @Column(name = "password", nullable = false, length = 250)
    private String password;
    @Basic
    @Column(name = "full_name", nullable = false, length = 250)
    private String fullName;
    @Basic
    @Column(name = "address", nullable = false, length = 250)
    private String address;
    @Basic
    @Column(name = "email", nullable = false, length = 250)
    private String email;
    @Basic
    @Column(name = "phone", nullable = false, length = 250)
    private String phone;
    @Basic
    @Column(name = "status", nullable = false)
    private byte status;
    @Basic
    @Column(name = "role_id", nullable = false)
    private int roleId;

    public AccountEntity() { }

    public AccountEntity(int id, String username, String password, String fullName, String address, String email, String phone, byte status, int roleId) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.status = status;
        this.roleId = roleId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
}
