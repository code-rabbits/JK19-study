package com.zut.dao;

import com.zut.domain.Book;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository(value = "bookDaoImpl")
public class BookDaoImpl extends AbstractBookDao{

    @Override
    public void insertBook(Book book) {
        String insertBook="insert into book(isbn,name,price) values(?,?,?)";
        Object[] args={book.getIsbn(),book.getName(),book.getPrice()};
        jdbcTemplate.update(insertBook,args);
    }

    @Override
    public void modifyBook(Book book) {
        String modifyBook="update book set name=?,price=? where isbn=?";
        Object[] args={book.getName(),book.getPrice(),book.getIsbn()};
        jdbcTemplate.update(modifyBook,args);
    }

    @Override
    public List<Book> queryAll() {
        String queryAllBook="SELECT * FROM book";
        RowMapper<Book> rowMapper=new BeanPropertyRowMapper<>(Book.class);
        books=jdbcTemplate.query(queryAllBook,rowMapper);
        return books;
    }
}
