package com.example.StudentMgmt.User;


import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User1, Integer> {
    User1 findByUsername(String username);
}
