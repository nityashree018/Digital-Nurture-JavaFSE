package com.library.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.entity.Country;
import com.library.repository.CountryRepository;

@Service
public class CountryService {

    @Autowired
    private CountryRepository repository;

    public Country findCountryByCode(String code) {
        Optional<Country> country = repository.findById(code);
        return country.orElse(null);
    }
}