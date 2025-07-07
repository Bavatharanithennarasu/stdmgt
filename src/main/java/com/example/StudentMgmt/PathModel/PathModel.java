package com.example.StudentMgmt.PathModel;

import jakarta.persistence.*;

@Entity
@Table(name = "student")
public class PathModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String grade;

    /** 🔑 REQUIRED by JPA / Spring for data binding */
    public PathModel() {
    }

    /** Optional convenience constructor */
    public PathModel(String name, String grade) {
        this.name = name;
        this.grade = grade;
    }

    // ---------- getters & setters ----------
    public int getId()            { return id; }
    public void setId(int id)     { this.id = id; }

    public String getName()       { return name; }
    public void setName(String name) { this.name = name; }

    public String getGrade()      { return grade; }
    public void setGrade(String grade) { this.grade = grade; }

    @Override
    public String toString() {
        return "PathModel [id=" + id + ", name=" + name + ", grade=" + grade + "]";
    }
}
