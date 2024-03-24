package com.example.demo.sevices;


public class ProductSearchForm {
    private String title;
    private String description;
    private int minPrice;
    private int maxPrice;
    // Добавьте другие поля для остальных атрибутов, если они также будут использоваться в поиске

    // Геттеры и сеттеры для каждого поля
    // (или использование аннотаций Lombok для автоматической генерации геттеров и сеттеров)

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(int minPrice) {
        this.minPrice = minPrice;
    }

    public int getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(int maxPrice) {
        this.maxPrice = maxPrice;
    }
}
