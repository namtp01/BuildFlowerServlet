package com.demo.entities;

import javax.persistence.*;

@Entity
@Table(name = "slide", schema = "heroku_8f21e8f014371d8", catalog = "")
public class SlideEntity {
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
    @Column(name = "description", nullable = false, length = -1)
    private String description;

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
