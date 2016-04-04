package aut.mrking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import aut.mrking.common.SessionIdentifierGenerator;
import aut.mrking.domain.DonVi;
import aut.mrking.exception.LoginFailException;
import aut.mrking.repository.DonViRepository;

@RestController
@RequestMapping("/api/donvi")
public class DonViController {

    @Autowired
    private DonViRepository donViRepository;

    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = { "application/json" })
    public DonVi login(@RequestBody DonVi dv) throws LoginFailException {
        DonVi donVi;
        String token;
        if (dv == null || (donVi = donViRepository.login(dv.getId(), dv.getMatkhau())) == null) {
            throw new LoginFailException("Mã đơn vị hoặc mật khẩu không đúng");
        }
        // Tạo token
        token = SessionIdentifierGenerator.nextSessionId();
        donVi.setToken(token);
        donViRepository.save(donVi);
        return donVi;
    }

    @RequestMapping(value = "/{maDonVi}/doi-mat-khau", method = RequestMethod.POST)
    public DonVi doiMatKhau(@RequestBody DonVi dv, @PathVariable("maDonVi") String maDonVi) throws LoginFailException {
        DonVi donVi = donViRepository.findOne(maDonVi);
        if (donVi != null && dv != null) {
            donVi.setMatkhau(dv.getMatkhau());
            return donViRepository.save(donVi);
        }
        return null; // TODO, will return bad request later
    }
}
