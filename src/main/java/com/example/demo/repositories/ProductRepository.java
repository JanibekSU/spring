package com.example.demo.repositories;

import com.example.demo.moduls.Product;
import com.example.demo.sevices.ProductSearchForm;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public interface ProductRepository extends JpaRepository<Product,Long> {
    List<Product> findByTitle(String title);
    List<Product> findByBrandAndModell(String brand, String modell);
    List<Product> findAll(Specification<Product> spec);

    List<Product> findByPrice(Integer price);

    List<Product> findByLitr(String litr);

    List<Product> findByTransmission(String transmission);

    List<Product> findByRudder(String rudder);

    List<Product> findByColor(String color);

    List<Product> findByCountry(String country);

    List<Product> findByCity(String city);

    List<Product> findByBody(String body);

    List<Product> findByTitleAndCityAndTransmission(String title, String city, String transmission);
}


