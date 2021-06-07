package com.zut.dao;

import com.zut.domain.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.annotation.Resource;
import java.util.List;

public class AbstractBookDao implements BookDao{

     List<Book> books;
     JdbcTemplate jdbcTemplate;

    @Resource(name = "list")
    public void setBooks(List<Book> books) {
        this.books = books;
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void insertBook(Book book) {

    }

    @Override
    public void modifyBook(Book book) {

    }

    @Override
    public List<Book> queryAll() {
        return null;
    }

    @Override
    public void insertAll(List<Book> bookList) {

    }

    @Override
    public void deleteBook(Book book) {

    }

    @Override
    public void deleteAll(List<Book> bookList) {

    }

    @Override
    public void deleteById(String id) {

    }

    @Override
    public Book queryOneBook(Book book) {
        return null;
    }

    @Override
    public Book queryOneBookById(String id) {
        return null;
    }
}
