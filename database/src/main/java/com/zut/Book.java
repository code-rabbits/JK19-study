package com.zut;

import org.springframework.stereotype.Component;

@Component
public class Book {
    private String name;
    private String isdn;
    private int price;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIsdn() {
        return isdn;
    }

    public void setIsdn(String isdn) {
        this.isdn = isdn;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Book{" +
                "name='" + name + '\'' +
                ", isdn='" + isdn + '\'' +
                ", price=" + price +
                '}';
    }
}
