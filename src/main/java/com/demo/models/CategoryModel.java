package com.demo.models;

import com.demo.entities.CategoryEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CategoryModel extends AbstractModel<CategoryEntity>{
    public CategoryModel() {
        super(CategoryEntity.class);
    }

    @SuppressWarnings("unchecked")
    public List<CategoryEntity> findCategoryLevel1() {
        List<CategoryEntity> result = null;
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            result = session.createQuery("from CategoryEntity where category = null ")
                    .list();
            transaction.commit();
        } catch (Exception e) {
            result = null;
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
        }
        return result;
    }
}
