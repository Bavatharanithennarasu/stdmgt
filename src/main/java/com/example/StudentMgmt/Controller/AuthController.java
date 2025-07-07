package com.example.StudentMgmt.Controller;




import com.example.StudentMgmt.User.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;

@Controller
public class AuthController {

    @Autowired private UserRepository userRepo;
    private final BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

    @GetMapping({"/", "/signup"})
    public String signupPage() {
        return "Signup";
    }

    @PostMapping("/signup")
    public String handleSignup(@RequestParam String username,
                               @RequestParam String password,
                               HttpSession session) {
        if (userRepo.findByUsername(username) != null) {
            session.setAttribute("msg", "User already exists.");
            return "redirect:/signin";
        }
        String hash = encoder.encode(password);
        userRepo.save(new User1(username, hash));
        session.setAttribute("user1", username);
        return "redirect:/home";
    }

    @GetMapping("/signin")
    public String signinPage() {
        return "Signin";
    }

    @PostMapping("/signin")
    public String handleSignin(@RequestParam String username,
                               @RequestParam String password,
                               HttpSession session) {
        User1 u = userRepo.findByUsername(username);
        if (u == null || !encoder.matches(password, u.getPasswordHash())) {
            session.setAttribute("msg", "Invalid credentials");
            return "redirect:/signin";
        }
        session.setAttribute("user", username);
        return "redirect:/home";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/signup";
    }
}
