package ru.netology.daojdbc.controller;

import org.springframework.web.bind.annotation.*;
import ru.netology.daojdbc.repository.DaojdbcRepository;

import java.util.List;

@RestController
@RequestMapping("/products")
public class DaojdbcController {
    private final DaojdbcRepository repository;

    public DaojdbcController(DaojdbcRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/fetch-product/{name}")
    public List<String> productName(@PathVariable String name){
        return repository.getProductName(name);
    }
}
