package com.example.feedbacksystem;

import java.time.LocalDate;

public class Feedback {
    private int id;
    private int userId;
    private int categoryId;
    private String content;
    private int rating;
    private LocalDate date;

    public Feedback(int id, int userId, int categoryId, String content, int rating, LocalDate date) {
        this.id = id;
        this.userId = userId;
        this.categoryId = categoryId;
        this.content = content;
        this.rating = rating;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }
}
