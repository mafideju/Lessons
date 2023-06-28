package org.mafideju.lessons.entity;

import java.time.LocalDate;


public class Lesson {
    private int id;
    private String username;
    private String lessonTitle;
    private String description;
    private LocalDate targetDate;
    private boolean done;

    public Lesson() {}

    public Lesson(int id, String username, String lessonTitle, String description, LocalDate targetDate, boolean done) {
        this.id = id;
        this.username = username;
        this.lessonTitle = lessonTitle;
        this.description = description;
        this.targetDate = targetDate;
        this.done = done;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getLessonTitle() {
        return lessonTitle;
    }

    public void setLessonTitle(String lessonTitle) {
        this.lessonTitle = lessonTitle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getTargetDate() {
        return targetDate;
    }

    public void setTargetDate(LocalDate targetDate) {
        this.targetDate = targetDate;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    @Override
    public String toString() {
        return "Lesson{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", lessonTitle='" + lessonTitle + '\'' +
                ", description='" + description + '\'' +
                ", targetDate=" + targetDate +
                ", done=" + done +
                '}';
    }
}
