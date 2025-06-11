package com.example.demo.elephants;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class ElephantController {

  @Autowired
  private ElephantService elephantService;

  @GetMapping("/elephants")
  public Object getAllElephants() {
    return elephantService.getAllElephants();
  }

  @GetMapping("/elephants/{id}")
  public Elephant getElephantsById(@PathVariable long id) {
    return elephantService.getElephantsById(id);
  }

  @GetMapping("/elephants/name")
  public Object getElephantsByName(@RequestParam String key) {
    if (key != null) {
      return elephantService.getElephantsByName(key);
    } else {
      return elephantService.getAllElephants();
    }

  }

  @GetMapping("/elephants/gender/{gender}")
  public Object getElephantsByGender(@PathVariable String gender) {
    return elephantService.getElephantsByGender(gender);
  }

  @GetMapping("/elephants/adults")
  public Object getAdultElephants() {
    return new ResponseEntity<>(elephantService.getAdultElephants(), HttpStatus.OK);

  }

  @PostMapping("/elephants")
  public Object addElephant(@RequestBody Elephant elephant) {
    return elephantService.addElephant(elephant);
  }

  @PutMapping("/elephants/{id}")
  public Elephant updateElephant(@PathVariable Long id, @RequestBody Elephant elephant) {
    elephantService.updateElephant(id, elephant);
    return elephantService.getElephantsById(id);
  }

  @DeleteMapping("/elephants/{id}")
  public Object deleteElephant(@PathVariable Long id) {
    elephantService.deleteElephant(id);
    return elephantService.getAllElephants();
  }

  @PostMapping("/elephants/writeFile")
  public Object writeJson(@RequestBody Elephant elephant) {
    return elephantService.writeJson(elephant);
  }

  @GetMapping("/elephants/readFile")
  public Object readJson() {
    return elephantService.readJson();

  }

}
