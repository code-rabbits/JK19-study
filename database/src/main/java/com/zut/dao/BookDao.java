package com.zut.dao;

import com.zut.domain.Book;

import java.util.List;

public interface BookDao {
    void insertBook(Book book);
    void modifyBook(Book book);
    List<Book> queryAll();
    void insertAll(List<Book> bookList);

    void deleteBook(Book book);
    void deleteAll(List<Book> bookList);
    void deleteById(String id);
    Book queryOneBook(Book book);
    Book queryOneBookById(String id);
}
