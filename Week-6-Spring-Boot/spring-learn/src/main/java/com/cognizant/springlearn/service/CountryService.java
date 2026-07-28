package com.cognizant.springlearn.service;

import com.cognizant.springlearn.model.Country;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class CountryService {

    private static final Logger LOGGER =
            LoggerFactory.getLogger(CountryService.class);

    public Country getCountry() {

        LOGGER.info("Start");

        Country country = new Country("IN", "India");

        LOGGER.info("End");

        return country;
    }
}