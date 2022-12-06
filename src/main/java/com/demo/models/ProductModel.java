package com.demo.models;

import com.demo.entities.ProductEntity;
import com.demo.utility.DBUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.*;
import java.util.List;

public class ProductModel extends AbstractModel<ProductEntity>{
    public ProductModel() {
        super(ProductEntity.class);
    }
    
    @SuppressWarnings("unchecked")
    public List<ProductEntity> findAll() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        String qString = "SELECT b FROM ProductEntity b";
        trans.begin();
        TypedQuery<ProductEntity> q = em.createQuery(qString, ProductEntity.class);
        List<ProductEntity> productEntityList;
        try {
            productEntityList = q.getResultList();
            if (productEntityList == null || productEntityList.isEmpty()) {
                productEntityList= null;;
            }

        }
        finally {
            em.close();
        }
        trans.commit();
        return productEntityList;
    }
}
