package com.example.demo.controllers;

import com.example.demo.moduls.Product;
import com.example.demo.moduls.User;
import com.example.demo.sevices.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/")
    public String products(@RequestParam(name = "searchWord", required = false) String title,
                           @RequestParam(name = "brand", required = false) String brand,
                           @RequestParam(name = "modell", required = false)  String modell,
                           @RequestParam(name = "priceFrom", required = false) Integer priceFrom,
                           @RequestParam(name = "priceTo", required = false) Integer priceTo,
                           @RequestParam(name = "yearFrom", required = false) String yearFrom,
                           @RequestParam(name = "yearTo", required = false) String yearTo,
                           @RequestParam(name = "searchCity", required = false) String city,
                           String litr, String transmission, String rudder, String color, String country, Principal principal, Model model) {
        brand = (brand != null && !brand.isEmpty()) ? brand : null;
        modell = (modell != null && !modell.isEmpty()) ? modell : null;
        priceFrom = (priceFrom != null ) ? priceFrom : null;
        priceTo = (priceTo != null ) ? priceTo : null;
        yearFrom = (yearFrom != null && !yearFrom.isEmpty()) ? yearFrom : null;
        yearTo = (yearTo != null && !yearTo.isEmpty()) ? yearTo : null;
        model.addAttribute("products", productService.listProducts(title, litr, transmission, rudder, color, country, city,brand,modell,priceTo,priceFrom,yearTo,yearFrom));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("searchWord", title);
        model.addAttribute("searchLitr", litr);
        model.addAttribute("searchTransmission", transmission);
        model.addAttribute("searchRudder", rudder);
        model.addAttribute("searchColor", color);
        model.addAttribute("searchCountry", country);
        model.addAttribute("searchCity", city);
        model.addAttribute("brand", brand);
        model.addAttribute("modell", modell);
        model.addAttribute("priceTo", priceTo);
        model.addAttribute("priceFrom", priceFrom);
        return "products";
    }


    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model, Principal principal) {
        Product product = productService.getProductById(id);
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImages());
        model.addAttribute("authorProduct", product.getUser());

        // Получите похожие продукты по названию данного продукта
        String brand = product.getBrand();
        String modell = product.getModell();
        List<Product> similarProducts = productService.findSimilarProductsByBrandAndModell(brand, modell);
        model.addAttribute("similarProducts", similarProducts);

        model.addAttribute("currentProductId", id);
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3, Product product, Principal principal) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3);
        return "redirect:/my/products";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id, Principal principal) {
        productService.deleteProduct(productService.getUserByPrincipal(principal), id);
        return "redirect:/my/products";
    }


    @GetMapping("/my/products")
    public String userProducts(Principal principal, Model model) {
        User user = productService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("products", user.getProducts());
        return "my-products";
    }

    @GetMapping("/similar")
    public List<Product> getSimilarProducts(@RequestParam String brand, @RequestParam String modell) {
        return productService.findSimilarProductsByBrandAndModell(brand, modell);
    }



    @GetMapping("/search")
    public String showSearchPage(@RequestParam(name = "searchWord", required = false) String title,
                                 @RequestParam(name = "searchCity", required = false) String city,
                                 @RequestParam(name = "searchTransmission", required = false) String transmission,
                                 @RequestParam(name = "searchcolor", required = false) String color,
                                 @RequestParam(name = "searchbody", required = false) String body,
                                 @RequestParam(name = "yearFrom", required = false) String yearFrom,
                                 @RequestParam(name = "yearTo", required = false) String yearTo,
                                 @RequestParam(name = "searchcountry", required = false) String country,
                                 @RequestParam(name = "searchlitr", required = false) String litr,
                                 @RequestParam(name = "mile", required = false) Integer mile,
                                 @RequestParam(name = "priceFrom", required = false) Integer priceFrom,
                                 @RequestParam(name = "priceTo", required = false) Integer priceTo,
                                 @RequestParam(name = "brand", required = false) String brand,
                                 @RequestParam(name = "modell", required = false)  String modell,


                                 Principal principal,
                                 Model model) {

        title = (title != null && !title.isEmpty()) ? title : null;
      transmission = (transmission != null && !transmission.isEmpty()) ? transmission : null;
     color = (color != null && !color.isEmpty()) ? color : null;
        country = (country != null && !country.isEmpty()) ? country : null;
        yearFrom = (yearFrom != null && !yearFrom.isEmpty()) ? yearFrom : null;
        yearTo = (yearTo != null && !yearTo.isEmpty()) ? yearTo : null;
        litr = (litr != null && !litr.isEmpty()) ? litr : null;
        brand = (brand != null && !brand.isEmpty()) ? brand : null;
        modell = (modell != null && !modell.isEmpty()) ? modell : null;

        mile = (mile != null) ? mile : null;
        priceFrom = (priceFrom != null ) ? priceFrom : null;
        priceTo = (priceTo != null ) ? priceTo : null;
        List<Product> products = productService.searchProducts(title, city, transmission,color,body,yearFrom, yearTo,country,litr,mile,priceFrom,priceTo,brand,modell);
        // Получаем текущего пользователя
        User user = productService.getUserByPrincipal(principal);

        // Добавляем найденные товары и другие параметры поиска в модель
        model.addAttribute("user", user);
        model.addAttribute("products", products);
        model.addAttribute("searchWord", title);
        model.addAttribute("searchCity", city);
        model.addAttribute("searchTransmission", transmission);
        model.addAttribute("searchcolor", color);
        model.addAttribute("searchbody", body);
        model.addAttribute("searchcountry", country);
        model.addAttribute("searchlitr", litr);
        model.addAttribute("mile", mile);
        model.addAttribute("priceTo", priceTo);
        model.addAttribute("priceFrom", priceFrom);
        model.addAttribute("brand", brand);
        model.addAttribute("modell", modell);


        // Возвращаем имя представления, куда нужно отобразить результаты поиска
        return "search";
    }}