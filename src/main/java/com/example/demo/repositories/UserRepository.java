package com.example.demo.repositories;

import com.example.demo.moduls.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);

    User findByEmailIgnoreCase(String email);
}

