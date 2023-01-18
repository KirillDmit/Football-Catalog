package com.example.footballcatalog.controllers;

import com.example.footballcatalog.models.Country;
import com.example.footballcatalog.models.Footballer;
import com.example.footballcatalog.repositories.FootballersRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashSet;
import java.util.Set;

@Controller
@RequestMapping("/footballers")
public class FootballersController {

    @Autowired
    private FootballersRepository footballersRepository;

    @GetMapping()
    public String index(Model model) {
        model.addAttribute("footballers", footballersRepository.findAll());
        return "footballers/show";
    }

    @GetMapping("/new")
    public String newFootballer(Model model, @ModelAttribute("footballer") Footballer newFootballer) {
        var footballers = footballersRepository.findAll();
        Set<String> teams = new HashSet<>();
        teams.add("");
        for(var footballer : footballers)
            teams.add(footballer.getTeam().replaceAll(",", ""));
        model.addAttribute("teams", teams);
        model.addAttribute("countries", Country.values());
        return "footballers/new";
    }

    @GetMapping("/{id}")
    public String show(@PathVariable("id") int id, Model model) {
        model.addAttribute("footballer", footballersRepository.findById(id));
        return "footballers/show";
    }

    @PostMapping()
    public String create(@ModelAttribute("footballer") Footballer footballer,
                         BindingResult bindingResult) {
        if(bindingResult.hasErrors())
            return "footballers/new";
        footballersRepository.save(footballer);
        return "redirect:/footballers";
    }

    @GetMapping("/{id}/edit")
    public String edit(Model model, @PathVariable("id") int id) {
        model.addAttribute("footballer", footballersRepository.findById(id));
        model.addAttribute("countries", Country.values());
        return "footballers/edit";
    }

    @PatchMapping()
    public String update(@ModelAttribute("footballer") @Valid Footballer footballer,
                         @RequestAttribute("id") int id, BindingResult bindingResult) {
        if(bindingResult.hasErrors())
            return "footballers/edit";
        footballer.setId(id);
        footballersRepository.save(footballer);
        return "redirect:/footballers";
    }
}
