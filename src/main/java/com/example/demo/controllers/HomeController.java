package com.example.demo.controllers;
import com.example.demo.moduls.Product;
import com.example.demo.moduls.User;
import com.example.demo.sevices.ProductService;
import org.aspectj.apache.bcel.generic.ClassGen;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.util.List;

@Controller
public class HomeController {

    private final ProductService productService;

    public HomeController(ProductService productService) {
        this.productService = productService;
    }
    // Метод для перехода на обычный сайт
    @GetMapping("/autocenter")
    public String index(Principal principal, Model model) {
        // Получаем объект пользователя из Principal
        if (principal != null) {
            model.addAttribute("user", productService.getUserByPrincipal(principal));
        }

        // Добавьте другие атрибуты, если они нужны для вашего представления
        // model.addAttribute("attributeName", attributeValue);

        return "autocenter"; // Замените "autocenter" на адрес вашего представления
    }
    @GetMapping("/newauto")
    public String newAuto(Principal principal, Model model) {
        // Получаем объект пользователя из Principal
        if (principal != null) {
            model.addAttribute("user", productService.getUserByPrincipal(principal));
        }

        // Добавьте другие атрибуты, если они нужны для вашего представления
        // model.addAttribute("attributeName", attributeValue);

        return "newauto"; // Замените "autocenter" на адрес вашего представления
    }




}
