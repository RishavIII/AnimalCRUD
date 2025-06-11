package com.example.demo.elephants;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ElephantController {

  @Autowired
  private ElephantService elephantService;

  @GetMapping("/elephants")
  public String getAllElephants(Model model) {
    model.addAttribute("elephants", elephantService.getAllElephants());
    model.addAttribute("title", "All Elephants");
    return "index";
  }

  @GetMapping("/elephants/{id}")
  public String getElephantsById(@PathVariable long id, Model model) {
    model.addAttribute("elephant", elephantService.getElephantsById(id));
    model.addAttribute("title", "Elephant #: " + id);
    return "details";
  }

  @GetMapping("/elephants/name")
  public String getElephantsByName(@RequestParam String key, Model model) {
    if (key != null) {
      model.addAttribute("elephants", elephantService.getElephantsByName(key));
      model.addAttribute("title", "Elephants By Name: " + key);
      return "index";
    } else {
      return "redirect:/elephants/";
    }
  }

  @GetMapping("/elephants/gender/{gender}")
  public String getElephantsByGender(@PathVariable String gender, Model model) {
    model.addAttribute("elephants", elephantService.getElephantsByGender(gender));
    model.addAttribute("title", "Elephants By Gender: " + gender);
    return "index";
  }

  @GetMapping("/elephants/adults")
  public String getAdultElephants(Model model) {
    model.addAttribute("elephants", elephantService.getAdultElephants());
    model.addAttribute("title", "Adult Elephants");
    return "index";
  }

  @GetMapping("/elephants/delete/{id}")
  public String deleteElephant(@PathVariable Long id) {
    elephantService.deleteElephant(id);
    return "redirect:/elephants";
  }

  @GetMapping("/elephants/createForm")
  public String showCreateForm(Model model) {
      Elephant elephant = new Elephant();
      model.addAttribute("elephant", elephant);
      model.addAttribute("title", "Create New Elephant");
      return "create";
  }

  @PostMapping("/elephants")
  public String addElephant(Elephant elephant) {
    Elephant createdElephant = elephantService.addElephant(elephant);
    return "redirect:/elephants/" + createdElephant.getElephantId();
  }

  @GetMapping("/elephants/updateForm/{id}")
  public String showUpdateForm(@PathVariable Long id, Model model) {
      Elephant elephant = elephantService.getElephantsById(id);
      model.addAttribute("elephant", elephant);
      model.addAttribute("title", "Update Elephant: " + id);
      return "update";
  }

  @PostMapping("/elephants/{id}")
  public String updateElephant(@PathVariable Long id, Elephant elephant) {
    elephantService.updateElephant(id, elephant);
    return "redirect:/elephants/" + id;
  }

  @PostMapping("/elephants/writeFile")
  public String writeJson(@RequestBody Elephant elephant) {
    return elephantService.writeJson(elephant);
  }

  @GetMapping("/elephants/readFile")
  public Object readJson() {
    return elephantService.readJson();
  }

  @GetMapping("/elephants/about")
  public String about() {
    return "about";
  }
}
