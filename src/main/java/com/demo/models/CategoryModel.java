package com.demo.models;

import com.demo.entities.CategoryEntity;
import com.demo.utility.DBUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.io.IOException;
import java.util.List;

public class CategoryModel{
    public static void insertCategory(int id, String name, Boolean status, CategoryEntity category_id) throws IOException {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        CategoryEntity category = new CategoryEntity(id, name, status, category_id);
        trans.begin();
        em.persist(category);
        trans.commit();
    }

    public static List<CategoryEntity> findAllCategory() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        String qString = "SELECT b FROM CategoryEntity b";
        trans.begin();
        TypedQuery<CategoryEntity> q = em.createQuery(qString, CategoryEntity.class);
        List<CategoryEntity> categoryEntityList;
        try {
            categoryEntityList= q.getResultList();
            if (categoryEntityList == null || categoryEntityList.isEmpty()) {
                categoryEntityList= null;;
            }

        }
        finally {
            em.close();
        }
        trans.commit();
        return categoryEntityList;
    }
}
