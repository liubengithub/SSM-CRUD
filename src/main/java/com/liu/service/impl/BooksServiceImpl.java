package com.liu.service.impl;

import com.liu.mapper.BooksMapper;
import com.liu.pojo.Books;
import com.liu.service.BooksService;

import java.util.List;

/**
 * @author root
 * @create 2020-11-01 16:11
 */
public class BooksServiceImpl implements BooksService {
    BooksMapper booksMapper;

    //调用dao层的操作，设置一个set接口，方便Spring管理
    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    public int addBook(Books book) {
        return booksMapper.addBook(book);
    }

    public int deleteBookById(int id) {
        return booksMapper.deleteBookById(id);
    }

    public int updateBook(Books book) {
        return booksMapper.updateBook(book);
    }

    public Books queryBookById(int id) {
        return booksMapper.queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return booksMapper.queryAllBook();
    }

    public Books queryBookByName(String name) {
        return booksMapper.queryBookByName(name);
    }
}
