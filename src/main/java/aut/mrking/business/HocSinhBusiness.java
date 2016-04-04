package aut.mrking.business;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aut.mrking.domain.HocSinh;
import aut.mrking.repository.HocSinhRepotory;

@Service
public class HocSinhBusiness {
    @Autowired
    private HocSinhRepotory hocSinhRepotory;
    @Autowired
    private AcessExcelFileBusiness acessExcelFileBusiness;

    public Workbook exportHocSinh(String maCoSo) {
        Workbook wb = new HSSFWorkbook();
        Sheet sh = wb.createSheet("Hoc Sinh");
        Row row;
        int index = 0;
        Iterable<HocSinh> dsHocSinh = hocSinhRepotory.layDSHocSinhCanDuyetTheoCoSo(maCoSo);

        for (HocSinh hs : dsHocSinh) {
            row = sh.createRow(index);
            acessExcelFileBusiness.setHSRow(row, hs);
            index++;
        }

        return wb;
    }
}
