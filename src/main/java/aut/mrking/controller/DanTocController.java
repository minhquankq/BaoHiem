package aut.mrking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import aut.mrking.domain.DanToc;
import aut.mrking.repository.DanTocRepotory;

@RestController
@RequestMapping("/api/dantoc")
public class DanTocController {
    @Autowired
    private DanTocRepotory danTocRepotory;

    @RequestMapping(method = RequestMethod.GET)
    public List<DanToc> layDSQuocTich(@RequestParam(value = "tuKhoa") String tuKhoa) {
        Long id = null;
        try {
            id = Long.valueOf(tuKhoa);
        } catch (Exception e) {

        }
        return danTocRepotory.layDSDanToc(id, tuKhoa);
    }
}
