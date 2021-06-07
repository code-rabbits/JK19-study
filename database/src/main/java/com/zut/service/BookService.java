package com.zut.service;

import com.zut.dao.BookDao;
import com.zut.domain.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    private BookDao bookDao;

    public void insert(Book book){
        bookDao.insertBook(book);
    }

    public List<Book> queryAll() {
        return bookDao.queryAll();
    }
}
