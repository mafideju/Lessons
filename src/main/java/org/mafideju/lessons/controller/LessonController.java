package org.mafideju.lessons.controller;

import jakarta.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import org.mafideju.lessons.entity.Lesson;
import org.mafideju.lessons.service.LessonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping(value = "lesson-creator", method = RequestMethod.GET)
    public String getLessonsPage(ModelMap model) {
        Lesson lesson = new Lesson(0, (String)model.get("name"), "", "", LocalDate.now().plusDays(7), false);

        model.put("lesson", lesson);
        return "lesson-creator";
    }

    @RequestMapping(value = "lesson-creator", method = RequestMethod.POST)
    public String createNewLesson(ModelMap model,
                                  @Valid Lesson lesson,
                                  BindingResult result) {
        if (result.hasErrors()) {
            return "lesson-creator";
        }

        String username = (String)model.get("name");
        lessonService.newLesson(username, lesson.getLessonTitle(), lesson.getDescription(),
                LocalDate.now().plusDays(7), false);

        return "redirect:lessons";
    }
}
