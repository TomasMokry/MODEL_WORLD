package com.engeto.modelWorld.model;

import java.math.BigDecimal;

public class Item {
    int id;
    int partNo;
    String name;
    String description;
    boolean isForSale;
    BigDecimal price;

    public Item(int id, int partNo, String name, String description, boolean isForSale, BigDecimal price) {
        this.id = id;
        this.partNo = partNo;
        this.name = name;
        this.description = description;
        this.isForSale = isForSale;
        this.price = price;
    }

    public Item() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPartNo() {
        return partNo;
    }

    public void setPartNo(int partNo) {
        this.partNo = partNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isForSale() {
        return isForSale;
    }

    public void setForSale(boolean forSale) {
        isForSale = forSale;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Item{" +
                "id=" + id +
                ", partNo=" + partNo +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", isForSale=" + isForSale +
                ", price=" + price +
                '}';
    }
}
