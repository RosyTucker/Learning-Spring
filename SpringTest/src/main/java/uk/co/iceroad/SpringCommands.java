package uk.co.iceroad;

import com.twu.biblioteca.model.menu.Command;

public enum SpringCommands {
    ADD_BOOK("Add Book","addBook"),
    ADD_CUSTOMER("Add Customer","addCustomer"),
    LIST_BOOK(Command.LIST_BOOK.getText(),"listBook");

    private final String key;
    private String page;

     SpringCommands(String key, String page) {
         this.key = key;
         this.page = page;
     }

    public String getPage() {
        return page;
    }

    public String getKey() {
        return key;
    }
}
