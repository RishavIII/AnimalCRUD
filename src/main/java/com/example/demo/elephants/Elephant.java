package com.example.demo.elephants;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "elephants")
public class Elephant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long elephantId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private String gender;

    @Column(nullable = false)
    private double age;

    public Elephant() {
    }

    public Elephant(Long elephantId, String name, String description, String gender, double age) {
        this.elephantId = elephantId;
        this.name = name;
        this.description = description;
        this.gender = gender;
        this.age = age;
    }

    public Elephant(String name, String description, String gender, double age) {
        this.name = name;
        this.description = description;
        this.gender = gender;
        this.age = age;
    }

    public Long getElephantId() {
        return elephantId;
    }

    public void setElephantId(Long id) {
        this.elephantId = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public double getAge() {
        return age;
    }

    public void setAge(double age) {
        this.age = age;
    }





}
