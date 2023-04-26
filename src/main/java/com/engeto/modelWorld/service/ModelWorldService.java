package com.engeto.modelWorld.service;

import com.engeto.modelWorld.model.Item;
import com.engeto.modelWorld.repository.ModelWorldRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ModelWorldService {
    @Autowired
    ModelWorldRepository modelWorldRepository;

    public Item getItemById(Long id) throws Exception {
        Item item = modelWorldRepository.loadItemById(id);

        if (item != null) {
            return item;
        } else {
            throw new Exception("This id not find");
        }
    }
}
