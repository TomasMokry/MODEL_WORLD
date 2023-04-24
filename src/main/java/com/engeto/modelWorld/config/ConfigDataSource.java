package com.engeto.modelWorld.config;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class ConfigDataSource {
    @Bean
    public static DataSource source(){
        DataSourceBuilder<?> db = DataSourceBuilder.create();
        db.driverClassName("com.mysql.jdbc.Driver");
        db.url("jdbc:mysql://localhost:3306/modelWorld");
        db.username("root");
        db.password("pAs@Y207H3*IqRN");
        return db.build();
    }
}
