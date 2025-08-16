package com.codewithmosh.store.products;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    @EntityGraph(attributePaths = "category")
    @Query("select p from Product p where p.category.id = :categoryId")
    List<Product> findByCategoryId(@Param("categoryId") Byte categoryId);

    @EntityGraph(attributePaths = "category")
    @Query("select p from Product p")
    List<Product> findAllWithCategory();
}