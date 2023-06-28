package org.mafideju.lessons.service;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean authenticate(String username, String password) {

        boolean isValidMan = username.equalsIgnoreCase("Marcio");
        boolean isValidCat = username.equalsIgnoreCase("Bajcito");
        boolean isValidPassword = password.equalsIgnoreCase("asd");

        return (isValidMan || isValidCat) && isValidPassword;
    }
}
