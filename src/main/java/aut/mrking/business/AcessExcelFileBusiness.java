package aut.mrking.business;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aut.mrking.domain.DanToc;
import aut.mrking.domain.HocSinh;
import aut.mrking.domain.Huyen;
import aut.mrking.domain.NoiKCB;
import aut.mrking.domain.QuocTich;
import aut.mrking.domain.Tinh;
import aut.mrking.domain.Xa;
import aut.mrking.repository.HuyenRepotory;
import aut.mrking.repository.TinhRepotory;

@Service
public class AcessExcelFileBusiness {
    @Autowired
    private TinhRepotory tinhRepotory;
    @Autowired
    private HuyenRepotory huyenRepotory;

    public Workbook getWorkbook(InputStream is) throws IOException {
        return new HSSFWorkbook(is);
    }

    public Sheet getSheet(Workbook wb, String name) {
        return wb.getSheet(name);
    }

    public List<DanToc> layDSDanToc(Sheet sh) {
        List<DanToc> result = new ArrayList<>();
        Iterator<Row> rows = sh.iterator();
        DanToc dt = null;
        while (rows.hasNext()) {
            Row row = rows.next();

            if (row.getRowNum() == 0) { // Bo qua dong dau tien
                continue; // just skip the rows if row number is 0 or 1
            }

            dt = new DanToc(Double.valueOf(row.getCell(0).getNumericCellValue()).longValue(),
                    row.getCell(1).getStringCellValue());
            result.add(dt);
        }
        return result;
    }

    public List<QuocTich> layDSQuocTich(Sheet sh) {
        List<QuocTich> result = new ArrayList<>();
        Iterator<Row> rows = sh.iterator();
        QuocTich qt = null;
        while (rows.hasNext()) {
            Row row = rows.next();

            if (row.getRowNum() == 0) { // Bo qua dong dau tien
                continue; // just skip the rows if row number is 0 or 1
            }

            qt = new QuocTich(Double.valueOf(row.getCell(0).getNumericCellValue()).longValue(),
                    row.getCell(1).getStringCellValue());
            result.add(qt);
        }
        return result;
    }

    public List<Tinh> layDSTinh(Sheet sh) {
        List<Tinh> result = new ArrayList<>();
        Iterator<Row> rows = sh.iterator();
        Tinh tinh = null;
        Row row = null;
        while (rows.hasNext()) {
            row = rows.next();

            if (row.getRowNum() == 0) { // Bo qua dong dau tien
                continue; // just skip the rows if row number is 0 or 1
            }
            tinh = new Tinh(getLongValue(row.getCell(2)), row.getCell(1).getStringCellValue());
            tinh.setMaTinh(getLongValue(row.getCell(3)));
            result.add(tinh);
        }
        return result;
    }

    public List<NoiKCB> layDSNoiKCB(Sheet sh) {
        List<NoiKCB> result = new ArrayList<>();
        Iterator<Row> rows = sh.iterator();
        NoiKCB noiKCB = null;
        Row row = null;
        Tinh tinh = null;
        Long tinhId;
        String id;
        String name;
        while (rows.hasNext()) {
            row = rows.next();

            if (row.getRowNum() == 0) { // Bo qua dong dau tien
                continue; // just skip the rows if row number is 0 or 1
            }

            tinhId = getLongValue(row.getCell(2));
            id = getTextValue(row.getCell(0));
            name = getTextValue(row.getCell(1));
            if (id != null && !id.isEmpty()) {
                tinh = tinhRepotory.findOne(tinhId);
                noiKCB = new NoiKCB(id, name, tinh);
                result.add(noiKCB);
            }
        }
        return result;
    }

    public List<Huyen> layDSHuyen(Sheet sh) {
        List<Huyen> result = new ArrayList<>();
        Iterator<Row> rows = sh.iterator();
        Huyen huyen = null;
        Row row = null;
        Long maTinh;
        Tinh tinh = tinhRepotory.findOne(94L);
        while (rows.hasNext()) {
            row = rows.next();

            if (row.getRowNum() < 3) { // Bo qua dong dau tien
                continue; // just skip the rows if row number is 0 or 1
            }

            maTinh = getLongValue(row.getCell(6));
            if (maTinh != null && maTinh.longValue() == 819) {
                huyen = new Huyen(getLongValue(row.getCell(5)), getTextValue(row.getCell(4)), tinh);
                result.add(huyen);
            }
        }
        return result;
    }

    public List<Xa> layDSXa(Sheet sh) {
        List<Xa> result = new ArrayList<>();
        Iterator<Row> rows = sh.iterator();
        Xa xa = null;
        Row row = null;
        String maHuyen;
        Huyen huyen;
        while (rows.hasNext()) {
            row = rows.next();

            if (row.getRowNum() < 3) { // Bo qua dong dau tien
                continue; // just skip the rows if row number is 0 or 1
            }

            maHuyen = getTextValue(row.getCell(10));
            if (maHuyen != null && maHuyen.startsWith("819")) {
                huyen = huyenRepotory.findOne(Long.valueOf(maHuyen));
                xa = new Xa(getLongValue(row.getCell(9)), getTextValue(row.getCell(8)), huyen);
                result.add(xa);
            }
        }
        return result;
    }

    private Long getLongValue(Cell cell) {
        if (cell == null)
            return null;
        cell.setCellType(Cell.CELL_TYPE_STRING);
        return cell.getStringCellValue().isEmpty() ? null : Long.valueOf(cell.getStringCellValue());
    }

    private String getTextValue(Cell cell) {
        if (cell == null)
            return null;
        cell.setCellType(Cell.CELL_TYPE_STRING);
        return cell.getStringCellValue();
    }

    public void setHSRow(Row row, HocSinh hs) {
        row.createCell(0).setCellValue(hs.getSoDinhDanh());
        row.createCell(1).setCellValue(hs.getHoLot());
        row.createCell(2).setCellValue(hs.getTen());
        row.createCell(2).setCellValue(hs.getDonVi().getTen());
    }

}
