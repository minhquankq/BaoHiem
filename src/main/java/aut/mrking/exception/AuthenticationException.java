package aut.mrking.exception;

import javax.servlet.ServletException;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.FORBIDDEN)
public class AuthenticationException extends ServletException {

    private static final long serialVersionUID = 8475291251982844792L;

    public AuthenticationException(String message) {
        super(message);
    }

}
