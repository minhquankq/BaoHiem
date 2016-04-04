package aut.mrking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import aut.mrking.domain.NoiKCB;
import aut.mrking.repository.NoiKCBRepotory;

@RestController
@RequestMapping("/api/noi-kcb")
public class NoiKCBController {
    @Autowired
    private NoiKCBRepotory noiKCBRepotory;

    @RequestMapping(method = RequestMethod.GET)
    public List<NoiKCB> layDSQuocTich(@RequestParam(value = "tinhId") Long tinhId,
            @RequestParam(value = "tuKhoa") String tuKhoa) {
        return noiKCBRepotory.layDSNoiKCB(tinhId, tuKhoa);
    }
}
