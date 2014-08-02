package uk.co.iceroad;

import com.twu.biblioteca.model.Book;
import com.twu.biblioteca.model.Library;
import com.twu.biblioteca.model.LibraryItem;
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
        return "index";
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
    public String postBook(@ModelAttribute BookBuilder builder, ModelMap model, HttpServletRequest request) {
        Menu menu = (Menu) request.getSession().getAttribute("menu");
        menu.getLibrary().getInventory().add(builder.createBook());
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
}