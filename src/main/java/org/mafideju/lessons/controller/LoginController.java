package org.mafideju.lessons.controller;

import org.mafideju.lessons.service.AuthenticationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    private final Logger logger = LoggerFactory.getLogger(getClass());
    private AuthenticationService authenticationService;

    public LoginController(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "welcome", method = RequestMethod.GET)
    public String welcome(@RequestParam String name, ModelMap model) {
        model.put("name", name);
        return "welcome";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String welcomePage(
            @RequestParam String name,
            @RequestParam String password,
            ModelMap model) {

        if (authenticationService.authenticate(name, password)) {
            model.put("name", name);
            return "welcome";
        }
        model.put("errorMessage", "Invalid credentials.");

        return "login";
    }
}
