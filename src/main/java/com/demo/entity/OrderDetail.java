package com.demo.entity;

public class OrderDetail {
    private String productName;
    private float subtotal;
    private float shipping;
    private float total;

    public OrderDetail(String productName, String subtotal,
                       String shipping, String total) {
        this.productName = productName;
        this.subtotal = Float.parseFloat(subtotal);
        this.shipping = Float.parseFloat(shipping);
        this.total = Float.parseFloat(total);
    }

    public String getProductName() {
        return productName;
    }

    public String getSubtotal() {
        return String.format("%.2f", subtotal);
    }

    public String getShipping() {
        return String.format("%.2f", shipping);
    }


    public String getTotal() {
        return String.format("%.2f", total);
    }
}
