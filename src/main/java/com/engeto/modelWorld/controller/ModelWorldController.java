package com.engeto.modelWorld.controller;

import com.engeto.modelWorld.error.ErrorResponse;
import com.engeto.modelWorld.model.Item;
import com.engeto.modelWorld.repository.ModelWorldRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;


@RestController
@RequestMapping("/modelWorld")
public class ModelWorldController {
    Logger logger = LoggerFactory.getLogger(ModelWorldController.class);
    @Autowired
    ModelWorldRepository modelWorldRepository;

    @GetMapping(value = "/items")
    public List<Item> loadAllAvailableItems(){
       logger.info("Get all available Items.");
       return modelWorldRepository.loadAllAvailableItems();
    }

    @GetMapping(value = "/item/{id}")
    public Item loadProductById(@PathVariable Long id){
        logger.info(String.format("Get one item id %s .", id));
        return modelWorldRepository.loadProductById(id);
    }

    @PostMapping(value ="/item")
    public Item saveItem(@RequestBody Item itemToCreate){
        modelWorldRepository.saveItem(itemToCreate);
        return modelWorldRepository.loadLastCreatedProduct();
    }

    @DeleteMapping(value = "/items")
    public void deleteOutOfSaleItems(){
        modelWorldRepository.deleteOutOfSaleItems();
    }

    @PutMapping(value = "/item/{id}")
    public void updatePriceById(@PathVariable Long id, @RequestParam BigDecimal price){
        modelWorldRepository.updatePriceById(id,price);
    }

    @ExceptionHandler
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ErrorResponse handlerException(Exception e){
        return new ErrorResponse(e.getMessage(), LocalDateTime.now());
    }


}
