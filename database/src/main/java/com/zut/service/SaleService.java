package com.zut.service;


import com.zut.domain.Book;
import com.zut.dao.BookDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
public class SaleService {
    private BookDao bookDAO;

    @Autowired
    @Qualifier(value = "bookDaoImpl")
    public void setBookDAO(BookDao bookDAO) {
        this.bookDAO = bookDAO;
    }


    public void insert(Book book){
        bookDAO.insertBook(book);
    }

    @Transactional
    public void onSale(float sale){
        List<Book> bookList=bookDAO.queryAll();
        for(Book b:bookList){
            b.setPrice(b.getPrice()*sale);
            bookDAO.modifyBook(b);
        }


    }
}
