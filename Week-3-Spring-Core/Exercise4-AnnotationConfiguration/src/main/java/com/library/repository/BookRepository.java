package com.library.repository;

import org.springframework.stereotype.Component;

@Component
public class BookRepository {

    public void displayBooks() {
        System.out.println("Book Repository Loaded");
    }

}