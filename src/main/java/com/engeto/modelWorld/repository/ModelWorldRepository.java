package com.engeto.modelWorld.repository;

import com.engeto.modelWorld.model.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public class ModelWorldRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Item> loadAllAvailableItems(){
        return jdbcTemplate.query("SELECT * FROM products", (rs,rowNum) -> new Item(
                rs.getInt("id"),
                rs.getInt("partNo"),
                rs.getString("name"),
                rs.getString("description"),
                rs.getBoolean("isForSale"),
                rs.getBigDecimal("price")));
    }

    public void saveItem(Item newItem){
        jdbcTemplate.execute("INSERT INTO products(partNo, name, description, isForSale, price) VALUES("
                + newItem.getPartNo() + ",'"
                + newItem.getName() +"','"
                + newItem.getDescription() + "',"
                + newItem.isForSale() + ","
                + newItem.getPrice() + ")");
    }

    public Item loadProductById(Long id){
        return jdbcTemplate.queryForObject("SELECT * FROM products WHERE id = ?", new Object[]{id}, (rs, rowNum) -> new Item(
                rs.getInt("id"),
                rs.getInt("partNo"),
                rs.getString("name"),
                rs.getString("description"),
                rs.getBoolean("isForSale"),
                rs.getBigDecimal("price")
        ));
    }

    public void updatePriceById(Long id, BigDecimal newPrice){
        jdbcTemplate.execute("UPDATE products SET price =" + newPrice + " WHERE id =" + id);
    }

    public void deleteOutOfSaleItems(){
        jdbcTemplate.execute("DELETE FROM products WHERE isForSale = false");
    }

    public Item loadLastCreatedProduct(){
        String query = "SELECT * from products order by id DESC LIMIT 1";
        return jdbcTemplate.queryForObject(query, (rs, rowNum) -> new Item(
                rs.getInt("id"),
                rs.getInt("partNo"),
                rs.getString("name"),
                rs.getString("description"),
                rs.getBoolean("isForSale"),
                rs.getBigDecimal("price")));
    }
}
