package org.mafideju.lessons.controller;

import java.util.List;
import org.mafideju.lessons.entity.Lesson;
import org.mafideju.lessons.service.LessonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LessonController {

    private final LessonService lessonService;

    public LessonController(LessonService lessonService) {
        this.lessonService = lessonService;
    }

    @RequestMapping("lessons")
    public String listAllLessons(ModelMap model) {
        String username = "Marcio";
        List<Lesson> lessons = lessonService.findByUsername(username);
        model.put("lessons", lessons);
        model.put("name", username);

        return "lessons";
    }
}
