package com.liu.mapper;

import com.liu.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author root
 * @create 2020-11-01 15:55
 */
public interface BooksMapper {
    int addBook(Books book);

    int deleteBookById(@Param("bookID") int id);

    int updateBook(Books book);

    Books queryBookById(@Param("bookID") int id);

    List<Books> queryAllBook();

    Books queryBookByName(@Param("bookName") String name);
}
