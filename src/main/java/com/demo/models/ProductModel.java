package com.demo.models;

import com.demo.entities.ProductEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ProductModel extends AbstractModel<ProductEntity>{
    public ProductModel() {
        super(ProductEntity.class);
    }
    
    @SuppressWarnings("unchecked")
    public List<ProductEntity> findAll() {
        List<ProductEntity> productEntities = null;
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            productEntities = session.createQuery("select * from ProductEntity ").list();
//            org.hibernate.query.Query query = session.createQuery("from ProductEntity");
//            query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            productEntities = null;
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
        }
        return productEntities;
    }
}
