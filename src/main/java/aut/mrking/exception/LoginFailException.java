package aut.mrking.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.UNAUTHORIZED)
public class LoginFailException extends Exception {

    private static final long serialVersionUID = 8475291251982844793L;

    public LoginFailException(String message) {
        super(message);
    }

}
