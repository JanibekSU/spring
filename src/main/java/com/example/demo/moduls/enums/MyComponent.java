package com.example.demo.moduls.enums;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

@Component
public class MyComponent {

    @Autowired
    private Environment env;

    public void someMethod() {
        String myVariable = env.getProperty("MY_VARIABLE");
        // Используйте myVariable по вашему усмотрению
    }
}