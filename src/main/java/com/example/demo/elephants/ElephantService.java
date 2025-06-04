package com.example.demo.elephants;

import java.io.IOException;
import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ElephantService {

  @Autowired
  private ElephantRepository elephantRepository;

  public Object getAllElephants() {
    return elephantRepository.findAll();
  }

  public Elephant getElephantsById(@PathVariable long studentId) {
    return elephantRepository.findById(studentId).orElse(null);
  }

  public Object getElephantsByName(String name) {
    return elephantRepository.getElephantsByName(name);
  }

  public Object getElephantsByGender(String gender) {
    return elephantRepository.findByGender(gender);
  }

  public Object getAdultElephants() {
    return elephantRepository.findAdultElephants();
  }

  public Elephant addElephant(Elephant elephant) {
    return elephantRepository.save(elephant);
  }

  public Elephant updateElephant(Long elephantId, Elephant elephant) {
    elephant.setElephantId(elephantId);
    return elephantRepository.save(elephant);
  }

  public void deleteElephant(Long elephantId) {
    elephantRepository.deleteById(elephantId);
  }

  public String writeJson(Elephant elephant) {
    ObjectMapper objectMapper = new ObjectMapper();
    try {
      objectMapper.writeValue(new File("elephants.json"), elephant);
      return "Elephant written to JSON file successfully";
    } catch (IOException e) {
      e.printStackTrace();
      return "Error writing student to JSON file";
    }

  }

  public Object readJson() {
    ObjectMapper objectMapper = new ObjectMapper();
    try {
      return objectMapper.readValue(new File("elephants.json"), Elephant.class);
    } catch (IOException e) {
      e.printStackTrace();
      return null;
    }

  }

}