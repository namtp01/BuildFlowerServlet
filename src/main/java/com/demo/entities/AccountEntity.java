package com.demo.entities;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "account", schema = "heroku_8f21e8f014371d8", catalog = "")
public class AccountEntity implements Serializable {
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
    @Column(name = "role", nullable = false)
    private String role;

    public AccountEntity() { }

    public AccountEntity(String username, String password, String role) {
        this.username = username;
        this.password = password;
        this.role = role;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
