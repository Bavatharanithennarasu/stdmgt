
package com.example.StudentMgmt.Repositary;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.StudentMgmt.PathModel.PathModel;

public interface Repositary extends JpaRepository <PathModel,Integer> {

}