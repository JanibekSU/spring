package com.example.demo.sevices;

import com.example.demo.moduls.Image;
import com.example.demo.moduls.Product;
import com.example.demo.moduls.User;
import com.example.demo.repositories.ProductRepository;
import com.example.demo.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
    private final UserRepository userRepository;


    public List<Product> listProducts(String title, String litr, String transmission, String rudder, String color, String country, String city,  String brand, String modell, Integer priceFrom, Integer priceTo, String yearFrom, String yearTo) {
        Specification<Product> spec = Specification.where(null);
        if (title != null) {
            return productRepository.findByTitle(title);
        }

        if (litr != null) {
            return productRepository.findByLitr(litr);
        }
        if (transmission != null) {
            return productRepository.findByTransmission(transmission);
        }
        if (rudder != null) {
            return productRepository.findByRudder(rudder);
        }
        if (color != null) {
            return productRepository.findByColor(color);
        }

        if (country != null) {
            return productRepository.findByCountry(country);
        }

        if (city != null && !city.isEmpty()) {
            spec = spec.and(ProductSpecifications.cityEquals(city));
        }
        if (brand != null && !brand.isEmpty()) {
            spec = spec.and(ProductSpecifications.brandEquals(brand));
        }
        if (modell != null && !modell.isEmpty()) {
            spec = spec.and(ProductSpecifications.modellEquals(modell));
        }
        if (priceFrom != null) {
            spec = spec.and((root, query, cb) -> cb.greaterThanOrEqualTo(root.get("price"), priceFrom));
        }
        if (priceTo != null) {
            spec = spec.and((root, query, cb) -> cb.lessThanOrEqualTo(root.get("price"), priceTo));
        }
        if (yearFrom != null) {
            spec = spec.and((root, query, cb) -> cb.greaterThanOrEqualTo(root.get("year"), yearFrom.toString()));
        }

        if (yearTo != null) {
            spec = spec.and((root, query, cb) -> cb.lessThanOrEqualTo(root.get("year"), yearTo.toString()));
        }
        return productRepository.findAll(spec);
    }


    public void saveProduct(Principal principal, Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        Image image1;
        Image image2;
        Image image3;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            log.info("Size of image1 bytes: {}", image1.getBytes().length);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            log.info("Size of image2 bytes: {}", image2.getBytes().length);
            product.addImageToProduct(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            log.info("Size of image3 bytes: {}", image3.getBytes().length);
            product.addImageToProduct(image3);
        }
        log.info("Saving new Product. Title: {}; Author email: {}", product.getTitle(), product.getUser().getEmail());
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImages().get(0).getId());
        productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public List<Product> findSimilarProductsByBrandAndModell(String brand, String modell) {
        return productRepository.findByBrandAndModell(brand, modell);
    }

    public void deleteProduct(User user, Long id) {
        Product product = productRepository.findById(id)
                .orElse(null);
        if (product != null) {
            if (product.getUser().getId().equals(user.getId())) {
                productRepository.delete(product);
                log.info("Product with id = {} was deleted", id);
            } else {
                log.error("User: {} haven't this product with id = {}", user.getEmail(), id);
            }
        } else {
            log.error("Product with id = {} is not found", id);
        }
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    public List<Product> searchProducts(String title, String city, String transmission, String color, String body, String yearFrom, String yearTo, String country, String litr, Integer mile, Integer priceFrom, Integer priceTo, String brand,
    String modell) {
        Specification<Product> spec = Specification.where(null);

        if (title != null && !title.isEmpty()) {
            spec = spec.and(ProductSpecifications.titleContains(title));
        }
        if (city != null && !city.isEmpty()) {
            spec = spec.and(ProductSpecifications.cityEquals(city));
        }
        if (transmission != null && !transmission.isEmpty()) {
            spec = spec.and(ProductSpecifications.transmissionEquals(transmission));
        }
        if (color != null && !color.isEmpty()) {
            spec = spec.and(ProductSpecifications.colorEquals(color));
        }
        if (body != null && !body.isEmpty()) {
            spec = spec.and(ProductSpecifications.bodyEquals(body));
        }
        if (country != null && !country.isEmpty()) {
            spec = spec.and(ProductSpecifications.countryEquals(country));
        }
        if (litr != null && !litr.isEmpty()) {
            spec = spec.and(ProductSpecifications.litrEquals(litr));
        }
        if (brand != null && !brand.isEmpty()) {
            spec = spec.and(ProductSpecifications.brandEquals(brand));
        }
        if (modell != null && !modell.isEmpty()) {
            spec = spec.and(ProductSpecifications.modellEquals(modell));
        }
        if (yearFrom != null) {
            spec = spec.and((root, query, cb) -> cb.greaterThanOrEqualTo(root.get("year"), yearFrom.toString()));
        }

        if (yearTo != null) {
            spec = spec.and((root, query, cb) -> cb.lessThanOrEqualTo(root.get("year"), yearTo.toString()));
        }
        if (mile != null) {
            spec = spec.and((root, query, cb) -> cb.lessThanOrEqualTo(root.get("mile"), mile));
        }
        if (priceFrom != null) {
            spec = spec.and((root, query, cb) -> cb.greaterThanOrEqualTo(root.get("price"), priceFrom));
        }
        if (priceTo != null) {
            spec = spec.and((root, query, cb) -> cb.lessThanOrEqualTo(root.get("price"), priceTo));
        }
        return productRepository.findAll(spec);
    }}

