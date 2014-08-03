package uk.co.iceroad;

import com.twu.biblioteca.model.Book;
import com.twu.biblioteca.model.Library;
import com.twu.biblioteca.model.LibraryItem;
import com.twu.biblioteca.model.Movie;
import com.twu.biblioteca.model.menu.Command;
import com.twu.biblioteca.model.menu.Menu;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes("menu")
public class LibraryController {


    /**
     * HOME
     */

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String initHome(HttpServletRequest request) {
        Menu menu = new Menu(new Library());
        request.getSession().setAttribute("menu", menu);
        return "redirect:index";
    }


    /**
     * INDEX
     */

    @RequestMapping(value = "index",method = RequestMethod.GET)
    public String initIndex(ModelMap model, HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        model.addAttribute("commandList", menu.getValidCommands());
        model.addAttribute("customerMessage", "We have " + menu.getLibrary().getCustomers().size() + " Users");
        model.addAttribute("bookMessage", "We have " + menu.getLibrary().getInventory().size() + " Items");
        model.addAttribute("loginMessage", "You are " + (menu.isUserLoggedIn() ? menu.getLoggedInCustomer().getName() : "not logged in."));
        return "index";
    }

    @RequestMapping(value = "index", method = RequestMethod.POST)
    public String postIndex(ModelMap model, HttpServletRequest request) {
        String action = request.getParameter("action");

        for(SpringCommands command: SpringCommands.values()) {
            if (command.getKey().equalsIgnoreCase(action)) {
                return "redirect:" + command.getPage();
            }
        }
        return "redirect:index";
    }

    /**
     * CUSTOMER
     */

    @RequestMapping(value = "addCustomer", method = RequestMethod.GET)
    public String initCustomer(ModelMap model) {
        model.addAttribute("customerBuilder", new CustomerBuilder());
        return "addCustomer";
    }

    @RequestMapping(value = "addCustomer",method = RequestMethod.POST)
    public String postCustomer(@ModelAttribute CustomerBuilder builder, ModelMap model, HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        menu.getLibrary().getCustomers().add(builder.createLibraryCustomer());
        return "redirect:index";
    }

    /**
     * BOOK
     */

    @RequestMapping(value = "addBook", method = RequestMethod.GET)
    public String initBook(ModelMap model) {
        model.addAttribute("bookBuilder", new BookBuilder());
        return "addBook";
    }

    @RequestMapping(value = "addBook",method = RequestMethod.POST)
    public String postBook(@ModelAttribute BookBuilder builder,HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        menu.getLibrary().getInventory().add(builder.createBook());
        return "redirect:index";
    }


    /**
     * MOVIE
     */

    @RequestMapping(value = "addMovie", method = RequestMethod.GET)
    public String initMovie(ModelMap model) {
        model.addAttribute("movieBuilder", new MovieBuilder());
        return "addMovie";
    }

    @RequestMapping(value = "addMovie",method = RequestMethod.POST)
    public String postMovie(@ModelAttribute MovieBuilder builder,HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        menu.getLibrary().getInventory().add(builder.createMovie());
        return "redirect:index";
    }

    /**
     * LIST BOOKS
     */

    @RequestMapping(value = "listBook", method = RequestMethod.GET)
    public String initListBook(ModelMap model, HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        List<Book> bookList = new ArrayList<Book>();
        for(LibraryItem item :  menu.getLibrary().getInventory()){
            if(item instanceof Book){
                bookList.add((Book)item);
            }
        }
        model.addAttribute("bookList", bookList);
        return "listBook";
    }

    @RequestMapping(value = "listBook",method = RequestMethod.POST)
    public String postListBook() {
        return "redirect:index";
    }


    /**
     * LIST MOVIES
     */

    @RequestMapping(value = "listMovie", method = RequestMethod.GET)
    public String initListMovie(ModelMap model, HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        List<Movie> movieList = new ArrayList<Movie>();
        for(LibraryItem item :  menu.getLibrary().getInventory()){
            if(item instanceof Movie){
                movieList.add((Movie) item);
            }
        }
        model.addAttribute("movieList", movieList);
        return "listMovie";
    }

    @RequestMapping(value = "listMovie",method = RequestMethod.POST)
    public String postListMovie() {
        return "redirect:index";
    }


    /**
     * LOGIN
     */

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String initLogin(ModelMap model) {
        model.addAttribute("loginBuilder", new LoginBuilder());
        return "login";
    }

    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String postLogin(@ModelAttribute LoginBuilder loginBuilder, HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        Command.LOGIN.getAction().performAction(menu,new String[]{loginBuilder.getLibraryNumber(),loginBuilder.getPassword()});
        return "redirect:index";
    }

    /**
     * CHECKOUT BOOK
     */

    @RequestMapping(value = "checkoutBook", method = RequestMethod.GET)
    public String initCheckoutBook(ModelMap model) {
        model.addAttribute("bookBuilder", new BookBuilder());
        return "checkoutBook";
    }

    @RequestMapping(value = "checkoutBook",method = RequestMethod.POST)
    public String postLogin(@ModelAttribute BookBuilder bookBuilder, HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        Command.CHECKOUT_BOOK.getAction().performAction(menu,
                new String[]{bookBuilder.getTitle(),bookBuilder.getAuthor(), bookBuilder.getYear()});
        return "redirect:index";
    }


}