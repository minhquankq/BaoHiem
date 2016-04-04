package aut.mrking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import aut.mrking.domain.Huyen;
import aut.mrking.repository.HuyenRepotory;

@RestController
@RequestMapping("/api/huyen")
public class HuyenController {
    @Autowired
    private HuyenRepotory huyenRepotory;

    @RequestMapping(method = RequestMethod.GET)
    public List<Huyen> layDSQuocTich(@RequestParam(value = "tinhId") Long tinhId,
            @RequestParam(value = "tuKhoa") String tuKhoa) {
        Long id = null;
        try {
            id = Long.valueOf(tuKhoa);
        } catch (Exception e) {

        }
        return huyenRepotory.layDSHuyen(tinhId, id, tuKhoa);
    }
}
