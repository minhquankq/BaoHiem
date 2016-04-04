package aut.mrking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import aut.mrking.domain.QuocTich;
import aut.mrking.repository.QuocTichRepotory;

@RestController
@RequestMapping("/api/quoctich")
public class QuocTichController {
    @Autowired
    private QuocTichRepotory quocTichRepotory;

    @RequestMapping(method = RequestMethod.GET)
    public List<QuocTich> layDSQuocTich(@RequestParam(value = "tuKhoa") String tuKhoa) {
        Long id = null;
        try {
            id = Long.valueOf(tuKhoa);
        } catch (Exception e) {

        }
        return quocTichRepotory.layDSQuocTich(id, tuKhoa);
    }
}
