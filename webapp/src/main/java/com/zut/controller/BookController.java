package com.zut.controller;


import com.zut.domain.Book;
import com.zut.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BookController {
    @Autowired
    private BookService bookService;


    @RequestMapping(value = "/index.html")
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/booklist.html")
    public String booklist(HttpServletRequest request) {

        request.getSession().setAttribute("books", bookService.queryAll());
        return "booklist";
    }

    @RequestMapping(value = "/addbook.html")
    public String newbook() {
        return "addBook";
    }

    @RequestMapping(value = "/insert.html")
    public String insert(HttpServletRequest request, Book book) {
        bookService.insert(book);
        request.getSession().setAttribute("books", bookService.queryAll());
        return "booklist";
    }


}
