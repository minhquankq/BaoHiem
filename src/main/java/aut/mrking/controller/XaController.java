package aut.mrking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import aut.mrking.domain.Xa;
import aut.mrking.repository.XaRepotory;

@RestController
@RequestMapping("/api/xa")
public class XaController {
    @Autowired
    private XaRepotory xaRepotory;

    @RequestMapping(method = RequestMethod.GET)
    public List<Xa> layDSQuocTich(@RequestParam(value = "huyenId") Long huyenId,
            @RequestParam(value = "tuKhoa") String tuKhoa) {
        Long id = null;
        try {
            id = Long.valueOf(tuKhoa);
        } catch (Exception e) {

        }
        return xaRepotory.layDSXa(huyenId, id, tuKhoa);
    }
}
