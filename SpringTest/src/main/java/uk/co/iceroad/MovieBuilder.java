package uk.co.iceroad;

import com.twu.biblioteca.model.Movie;

public class MovieBuilder {


    private String title;
    private String director;
    private String year;
    private int rating;

    public String getTitle() {
        return title;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
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

    public Movie createMovie(){
        return new Movie(title, director,year,rating);
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
