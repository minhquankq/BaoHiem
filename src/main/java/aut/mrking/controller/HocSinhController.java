package aut.mrking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import aut.mrking.business.HocSinhBusiness;
import aut.mrking.domain.HocSinh;
import aut.mrking.domain.TrangThai;
import aut.mrking.exception.NotFoundException;
import aut.mrking.repository.HocSinhRepotory;

@RestController
@RequestMapping("/api/hocsinh")
public class HocSinhController {
    @Autowired
    private HocSinhRepotory hocSinhRepotory;
    @Autowired
    private HocSinhBusiness hocSinhBusiness;

    @RequestMapping(method = RequestMethod.GET)
    public List<HocSinh> layDSHocSinh(@RequestParam(value = "maDonVi") String maDonVi) {
        return hocSinhRepotory.layDSHocSinhTheoDonVi(maDonVi.toUpperCase());
    }

    @RequestMapping(method = RequestMethod.POST)
    public HocSinh themHocSinh(@RequestBody HocSinh hocSinh) {
        return hocSinhRepotory.save(hocSinh);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public HocSinh capNhatHocSinh(@PathVariable("id") Long id, @RequestBody HocSinh hocSinh) throws NotFoundException {
        HocSinh hs = hocSinhRepotory.findOne(id);
        if (hs == null) {
            throw new NotFoundException("Khong tim thay hoc sinh voi id = " + id);
        } else {
            hs.updateInfo(hocSinh);
        }

        return hocSinhRepotory.save(hs);
    }

    @RequestMapping(value = "/{maPB}/cap-nhat-lop", method = RequestMethod.PUT)
    public void capNhatLopHoc(@RequestBody List<Long> ids, @PathVariable("maPB") String maPB) {
        hocSinhRepotory.capNhatLopHoc(ids, maPB);
    }

    @RequestMapping(value = "/{trangThai}/cap-nhat-trang-thai", method = RequestMethod.PUT)
    public void capNhatTrangThai(@RequestBody List<Long> ids, @PathVariable("trangThai") TrangThai trangThai) {
        hocSinhRepotory.capNhatTrangThai(ids, trangThai);
    }

    @RequestMapping(value = "/export")
    public void export(HttpServletResponse response, @RequestParam(value = "maCoSo") String maCoSo)
            throws IOException {
        Workbook wb = hocSinhBusiness.exportHocSinh(maCoSo.toUpperCase());

        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-disposition", "attachment; filename=danh-sach-hoc-sinh.xls");
        ServletOutputStream outputStream = response.getOutputStream();
        wb.write(outputStream);

        outputStream.flush();
        outputStream.close();
    }

    @RequestMapping(value = "/lay-hs-can-duyet", method = RequestMethod.GET)
    public List<HocSinh> layDSHocSinhCanDuyet(@RequestParam(value = "maCoSo", required = true) String maCoSo) {
        return hocSinhRepotory.layDSHocSinhCanDuyetTheoCoSo(maCoSo.toUpperCase());
    }
}
