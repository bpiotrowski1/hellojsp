package pl.piotrowskib;

import javax.servlet.http.Cookie;

public class MultiplicationService {
    public int getRozmiarFromCookie(String rozmiar, Cookie[] cookies) {
        for(Cookie c : cookies) {
            if(c.getName().equals(rozmiar) && !c.getValue().isEmpty()) {
                return Integer.parseInt(c.getValue());
            }
        }
        return 0;
    }
}
