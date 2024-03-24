

package com.example.demo.moduls;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;




@Entity
@Table(name = "products")
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;

    private String title;

    private String description;
    private String comment;
    private int price;
    private String year;
    private String body;
    private int mile;
    private String brand;
    private String modell;
    private String litr;
    private String transmission;
    private String  rudder;
    private String color;
    private String country;
    private String city;
    @OneToMany(cascade = CascadeType.ALL,  fetch = FetchType.EAGER, mappedBy = "product")
    private List<Image> images = new ArrayList<>();

    private Long previewImageId;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;

    private LocalDateTime dateOfCreated;

    @PrePersist
    private void init(){
        dateOfCreated = LocalDateTime.now();
    }

    public void addImageToProduct(Image image){
        image.setProduct(this);
        images.add(image);
    }

}
