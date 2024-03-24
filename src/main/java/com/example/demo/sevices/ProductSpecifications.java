
package com.example.demo.sevices;

import com.example.demo.moduls.Product;
import org.springframework.data.jpa.domain.Specification;

public class ProductSpecifications {
    public static Specification<Product> titleContains(String title) {
        return (root, query, cb) -> cb.like(root.get("title"), "%" + title + "%");
    }

    public static Specification<Product> cityEquals(String city) {
        return (root, query, cb) -> cb.equal(root.get("city"), city);
    }

    public static Specification<Product> transmissionEquals(String transmission) {
        return (root, query, cb) -> cb.equal(root.get("transmission"), transmission);
    }
    public static Specification<Product> colorEquals(String color) {
        return (root, query, cb) -> cb.equal(root.get("color"), color);
    }
    public static Specification<Product> bodyEquals(String body) {
        return (root, query, cb) -> cb.equal(root.get("body"), body);
    }

    public static Specification<Product> countryEquals(String country) {
        return (root, query, cb) -> cb.equal(root.get("country"), country);
    }
    public static Specification<Product> litrEquals(String litr) {
        return (root, query, cb) -> cb.equal(root.get("litr"), litr);
    }
    public static Specification<Product> brandEquals(String brand) {
        return (root, query, cb) -> cb.equal(root.get("brand"), brand);
    }
    public static Specification<Product> modellEquals(String modell) {
        return (root, query, cb) -> cb.equal(root.get("modell"), modell);
    }
    public static Specification<Product> yearGreaterThanOrEqualTo(String year) {
        return (root, query, cb) -> cb.greaterThanOrEqualTo(root.get("year"), String.valueOf(year));
    }

    public static Specification<Product> yearLessThanOrEqualTo(String year) {
        return (root, query, cb) -> cb.lessThanOrEqualTo(root.get("year"), String.valueOf(year));
    }
    public static Specification<Product> mileLessThanOrEqual(Integer mile) {
        return (root, query, cb) -> cb.lessThanOrEqualTo(root.get("mile"), mile);
    }
    public static Specification<Product> priceGreaterThanOrEqualTo(Integer price) {
        return (root, query, cb) -> cb.greaterThanOrEqualTo(root.get("price"),price);
    }
    public static Specification<Product> priceLessThanOrEqual(Integer price) {
        return (root, query, cb) -> cb.lessThanOrEqualTo(root.get("price"), price);
    }
}
