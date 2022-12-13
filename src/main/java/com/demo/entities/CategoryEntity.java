package com.demo.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;

@Entity
@Table(name = "category", schema = "heroku_8f21e8f014371d8")
public class CategoryEntity implements java.io.Serializable{
    private List<CategoryEntity> categories = new ArrayList<CategoryEntity>(0);
    private List<ProductEntity> products = new ArrayList<ProductEntity>(0);
    private CategoryEntity category;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "name", nullable = false, length = 250)
    private String name;

    @Column(name = "status", nullable = false)
    private boolean status;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_id")
    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }

    public CategoryEntity() { }

    public CategoryEntity(int id, String name, boolean status, CategoryEntity category) {
        this.category = category;
        this.id = id;
        this.name = name;
        this.status = status;
    }

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

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }


    @OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
    public List<CategoryEntity> getCategories() {
        return this.categories;
    }

    public void setCategories (List<CategoryEntity> categories) {
        this.categories = categories;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "id")
    public List<ProductEntity> getProducts() {
        return this.products;
    }

    public void setProducts (List<ProductEntity> products) {
        this.products = products;
    }
}
