package com.demo.entities;

import javax.persistence.*;

@Entity
@Table(name = "photo", schema = "heroku_8f21e8f014371d8", catalog = "")
public class PhotoEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "name", nullable = false, length = 250)
    private String name;
    @Basic
    @Column(name = "status", nullable = false)
    private byte status;
    @Basic
    @Column(name = "main", nullable = false)
    private byte main;
    @Basic
    @Column(name = "product_id", nullable = false)
    private int productId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }

    public byte getMain() {
        return main;
    }

    public void setMain(byte main) {
        this.main = main;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
}
