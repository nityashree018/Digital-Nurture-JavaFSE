package com.library.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.library.entity.Country;
import com.library.repository.CountryRepository;
import com.library.service.CountryService;

@SpringBootApplication
@EnableJpaRepositories(basePackages = "com.library.repository")
@EntityScan(basePackages = "com.library.entity")
public class SpringDataJpaApplication implements CommandLineRunner {

    @Autowired
    private CountryRepository repository;

    @Autowired
    private CountryService service;

    public static void main(String[] args) {
        SpringApplication.run(SpringDataJpaApplication.class, args);
    }

    @Override
    public void run(String... args) {

        repository.save(new Country("IN", "India"));
        repository.save(new Country("US", "United States"));

        Country country = service.findCountryByCode("IN");

        System.out.println(country.getCode());
        System.out.println(country.getName());
    }
}