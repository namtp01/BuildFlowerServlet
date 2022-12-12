package com.demo.models;

import com.demo.entities.AccountEntity;
import com.demo.entities.ProductEntity;
import com.demo.utility.DBUtil;

import javax.persistence.*;
import java.io.IOException;
import java.util.List;

public class ProductModel{
    public static void insertProduct(int product_id, String name, double price, int quanity, String description, String details, boolean status, boolean featured, int category_id) throws IOException {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        ProductEntity product = new ProductEntity(product_id, name, price, quanity, description, details, status, featured, category_id);
        trans.begin();
        em.persist(product);
        trans.commit();
    }

    public static void updateProduct(ProductEntity account) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.merge(account);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static List<ProductEntity> findAllProduct() {
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

    public static ProductEntity findProduct(int id) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        ProductEntity account = new ProductEntity();
        try {
            account = em.find(ProductEntity.class, id);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
        return account;
    }

    public static List<ProductEntity> searchProducts(String name) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        String qString = "SELECT b FROM ProductEntity b WHERE b.name = ?1";
        trans.begin();
        TypedQuery<ProductEntity> q = em.createQuery(qString, ProductEntity.class);
        List<ProductEntity> searchList;
        try {
            q.setParameter(1, name);
            searchList = q.getResultList();
            if (searchList == null || searchList.isEmpty()) {
                searchList= null;;
            }

        }
        finally {
            em.close();
        }
        trans.commit();
        return searchList;
    }

    public static void deleteProduct(int id) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.remove(em.find(AccountEntity.class, id));
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}
