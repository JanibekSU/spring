package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Locale;

@Controller
public class LanguageController {

    @GetMapping("/")
    public String getHomePage(Model model, Locale locale) {
        // Определение языка пользователя и выбор соответствующего шаблона
        String language = locale.getLanguage();
        String templateName = "template_ru"; // по умолчанию русский
        if ("kk".equals(language)) {
            templateName = "template_kz";
        }
        model.addAttribute("templateName", templateName);
        return "index"; // Это название вашего шаблона, настройте его в конфигурации Spring Boot
    }
}