package com.liu.controller;

import com.liu.pojo.Books;
import com.liu.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.annotation.ModelAndViewResolver;

import javax.jws.WebParam;
import java.util.ArrayList;
import java.util.List;

/**
 * @author root
 * @create 2020-11-01 20:20
 */
@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier(value = "booksServiceImpl")
    private BooksService booksService;

    @RequestMapping("/allBook")
    public String list(Model model) {
        List<Books> list = booksService.queryAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }

    @RequestMapping("/toAddBook")
    public String toAddPaper() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books book) {
        //  System.out.println("addBooks==>"+book);
        booksService.addBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/toUpdateBook")
    public String toUpdatePAper(int id, Model model) {
        Books book = booksService.queryBookById(id);
        //   System.out.println(book);
        model.addAttribute("Qbook", book);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books book, Model model) {
        //  System.out.println("updateBooks==>"+book);
        booksService.updateBook(book);
        Books book1 = booksService.queryBookById(book.getBookID());
        model.addAttribute("book", book1);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{id}")
    public String deleteBook(@PathVariable int id) {
        booksService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model) {
        Books book = booksService.queryBookByName(queryBookName);
        System.err.println("books=====>" + book);
        List<Books> list = new ArrayList<Books>();
        list.add(book);
        if (book == null) {
            list = booksService.queryAllBook();
            model.addAttribute("error", "找不到呢！！亲")

        }
        model.addAttribute("list", list);

        return "allBook";
    }
}
