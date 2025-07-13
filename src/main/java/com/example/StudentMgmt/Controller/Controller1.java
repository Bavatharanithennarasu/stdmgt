package com.example.StudentMgmt.Controller;
import org.springframework.ui.Model;
import java.util.Optional;

import java.util.List;   

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.StudentMgmt.PathModel.PathModel;
import com.example.StudentMgmt.Repositary.Repositary;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Controller1 {

    @Autowired
    private Repositary repo;

 
    private boolean notLoggedIn(HttpServletRequest req) {
        return req.getSession().getAttribute("user") == null;
    }

   
    @GetMapping("/")              
    public String landing() {
        return "redirect:/signin";
    }
    

  
    @GetMapping("/home")
    public String home(HttpServletRequest request) {
        if (notLoggedIn(request)) return "redirect:/signin";
        return "Home";
    }

   
    @GetMapping("/home_add")
    public String addStudentPage(HttpServletRequest request) {
        if (notLoggedIn(request)) return "redirect:/signin";
        return "NewFile";          // your “Add Student” JSP
    }

   
    @GetMapping("/view")
    public String viewStudents(HttpServletRequest request) {
        if (notLoggedIn(request)) return "redirect:/signin";
        List<PathModel> students = repo.findAll();
        request.setAttribute("students", students);
        return "View";
    }

    
    @PostMapping("/submit")
    public String submit(@ModelAttribute PathModel student,
                         HttpServletRequest request) {
        if (notLoggedIn(request)) return "redirect:/signin";
        repo.save(student);
        return "redirect:/view";
    }
    
    
    @GetMapping("/edit/{id}")
    public String showEdit(@PathVariable int id,
                           HttpServletRequest req,
                           Model model) {
        if (notLoggedIn(req)) return "redirect:/signin";
        Optional<PathModel> opt = repo.findById(id);
        if (opt.isEmpty()) return "redirect:/view";
        model.addAttribute("student", opt.get());
        return "Edit";                  
    }

   
    @PostMapping("/update")
    public String update(@ModelAttribute PathModel student,
                         HttpServletRequest req) {
        if (notLoggedIn(req)) return "redirect:/signin";
        repo.save(student);             
        return "redirect:/view";
    }

 
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id,
                         HttpServletRequest req) {
        if (notLoggedIn(req)) return "redirect:/signin";
        repo.deleteById(id);
        return "redirect:/view";
    }
}
