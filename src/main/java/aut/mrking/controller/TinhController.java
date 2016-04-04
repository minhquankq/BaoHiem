package aut.mrking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import aut.mrking.domain.Tinh;
import aut.mrking.repository.TinhRepotory;

@RestController
@RequestMapping("/api/tinh")
public class TinhController {
    @Autowired
    private TinhRepotory tinhRepotory;

    @RequestMapping(method = RequestMethod.GET)
    public List<Tinh> layDSQuocTich(@RequestParam(value = "tuKhoa") String tuKhoa) {
        Long id = null;
        try {
            id = Long.valueOf(tuKhoa);
        } catch (Exception e) {

        }
        return tinhRepotory.layDSTinh(id, tuKhoa);
    }
}
