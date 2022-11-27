package com.demo.models;

import com.demo.entities.AccountEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;


public class AccountModel extends AbstractModel<AccountEntity>{
    public AccountModel() {
        super(AccountEntity.class);
    }

    public AccountEntity find(String username) {
        AccountEntity accountEntity = null;
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            accountEntity = (AccountEntity) session.createQuery("from AccountEntity where username = :username")
                    .setParameter("username", username).getSingleResult();
            transaction.commit();
        } catch (Exception e) {
            accountEntity = null;
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
        }
        return accountEntity;
    }

    public AccountEntity find(String username, int role) {
        AccountEntity accountEntity = null;
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            accountEntity = (AccountEntity) session.createQuery("from AccountEntity where username = :username and roleId = :role_id")
                    .setParameter("role_id", role)
                    .setParameter("username", username).getSingleResult();
            transaction.commit();
        } catch (Exception e) {
            accountEntity = null;
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
        }
        return accountEntity;
    }

    public AccountEntity login(String username, String password, int roleId) {
        AccountEntity accountEntity = find(username, roleId);
        if(accountEntity != null) {
            if (BCrypt.checkpw(password, accountEntity.getPassword())) {
                return accountEntity;
            }
        }
        return null;
    }
}
