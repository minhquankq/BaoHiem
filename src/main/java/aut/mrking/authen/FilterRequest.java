package aut.mrking.authen;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import aut.mrking.exception.AuthenticationException;
import aut.mrking.repository.DonViRepository;

@Component
public class FilterRequest implements Filter {

    @Autowired
    private DonViRepository donViRepository;

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        if (!request.getRequestURI().startsWith("/api") || request.getRequestURI().equalsIgnoreCase("/api/hocsinh/export")
                || request.getRequestURI().equalsIgnoreCase("/api/donvi/login")) {
            chain.doFilter(req, res);
        } else {
            String maDonVi = request.getHeader("id");
            String token = request.getHeader("token");

            if (maDonVi == null || token == null)
                throw new AuthenticationException("Bạn chưa đăng nhập");
            else {
                if (donViRepository.checkToken(maDonVi, token)) {
                    chain.doFilter(req, res);
                } else {
                    throw new AuthenticationException("Bạn hết phiên làm việc, đề nghị đăng nhập lại");
                }
            }
        }
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {

    }

}
