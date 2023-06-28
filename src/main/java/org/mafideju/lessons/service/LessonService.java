package org.mafideju.lessons.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import org.mafideju.lessons.entity.Lesson;
import org.springframework.stereotype.Service;

@Service
public class LessonService {
    private static List<Lesson> lessons = new ArrayList<>();

    static {
        Lesson lessonOne = new Lesson(0, "Marcio", "Learn Spring", "Review basic spring concepts.", LocalDate.now().plusDays(7), false);
        Lesson lessonTwo = new Lesson(1, "Marcio", "Learn Java Academic", "Review basic Java concepts to OCA exam.", LocalDate.now().plusDays(20), false);
        Lesson lessonThree = new Lesson(2, "Marcio", "Read Kafka - The Process", "Keep reading Joseph K. history..", LocalDate.now().plusDays(3), false);

        Lesson lessonfour = new Lesson(3, "Bajcito", "Meowing", "Meows and ask for food", LocalDate.now(), false);
        Lesson lessonfive = new Lesson(4, "Bajcito", "Sleeping", "Meows and ask for bed", LocalDate.now(), true);

        lessons.add(lessonOne);
        lessons.add(lessonTwo);
        lessons.add(lessonThree);
        lessons.add(lessonfour);
        lessons.add(lessonfive);
    }

    public List<Lesson> findByUsername(String username) {
        return lessons;
    }
}
