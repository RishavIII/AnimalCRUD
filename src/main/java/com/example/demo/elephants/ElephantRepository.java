package com.example.demo.elephants;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ElephantRepository extends JpaRepository<Elephant, Long> {

    List<Elephant> findByGender(String gender);

    @Query(value = "SELECT * FROM Elephant e WHERE e.age >= 18", nativeQuery = true)
    List<Elephant> findAdultElephants();

    @Query(value = "SELECT * FROM Elephant e WHERE LOWER(e.name) LIKE LOWER(CONCAT('%', :namePart, '%'))", nativeQuery = true)
    List<Elephant> getElephantsByName(@org.springframework.data.repository.query.Param("namePart") String namePart);
}