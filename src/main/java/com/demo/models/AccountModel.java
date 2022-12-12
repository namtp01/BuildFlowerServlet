package com.demo.models;

import com.demo.entities.AccountEntity;
import com.demo.utility.DBUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.io.IOException;
import java.util.List;


public class AccountModel{
    public static void insertAccount(String username, String password, String role) throws IOException {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        AccountEntity account = new AccountEntity(username, password, role);
        trans.begin();
        em.persist(account);
        trans.commit();
    }

    public static void updateAccount(AccountEntity account) {
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

    public static List<AccountEntity> findAllAccount() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        String qString = "SELECT b FROM AccountEntity b";
        trans.begin();
        TypedQuery<AccountEntity> q = em.createQuery(qString, AccountEntity.class);
        List<AccountEntity> accountEntityList;
        try {
            accountEntityList = q.getResultList();
            if (accountEntityList == null || accountEntityList.isEmpty()) {
                accountEntityList= null;;
            }

        }
        finally {
            em.close();
        }
        trans.commit();
        return accountEntityList;
    }

    public static AccountEntity findAccount(int id) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        AccountEntity account = new AccountEntity();
        try {
            account = em.find(AccountEntity.class, id);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
        return account;
    }

    public static List<AccountEntity> searchAccounts(String username) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        String qString = "SELECT b FROM AccountEntity b WHERE b.username = ?1";
        trans.begin();
        TypedQuery<AccountEntity> q = em.createQuery(qString, AccountEntity.class);
        List<AccountEntity> searchList;
        try {
            q.setParameter(1, username);
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

    public static void deleteUser(int id) {
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
