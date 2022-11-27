package com.demo.models;

import com.demo.entities.ProductEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ProductModel extends AbstractModel<ProductEntity>{
    public ProductModel() {
        super(ProductEntity.class);
    }

}
