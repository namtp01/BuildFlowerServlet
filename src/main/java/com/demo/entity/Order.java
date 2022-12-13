package com.demo.entity;

import java.io.Serializable;
import java.util.List;

public class Order implements Serializable {
    private int id;
    private Account account;
    private List<Item> items;
    private int status;

    public Order() {
    }

    public Order(int id, Account account, List<Item> items, int status) {
        this.id = id;
        this.account = account;
        this.items = items;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
