package com.example.footballcatalog.repositories;

import com.example.footballcatalog.models.Footballer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FootballersRepository extends CrudRepository<Footballer, Integer> {

    public List<Footballer> findAll();
    public Footballer findById(int id);
}
