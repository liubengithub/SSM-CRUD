package com.liu.service;

import com.liu.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author root
 * @create 2020-11-01 16:10
 */
public interface BooksService {
    int addBook(Books book);

    int deleteBookById(int id);

    int updateBook(Books book);

    Books queryBookById(int id);

    List<Books> queryAllBook();

    Books queryBookByName(String name);
}
