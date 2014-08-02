package uk.co.iceroad;

import com.twu.biblioteca.model.Book;

public class BookBuilder {


    private String title;
    private String author;
    private String year;

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Book createBook(){
        return new Book(title,author,year);
    }
}
