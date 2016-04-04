package aut.mrking.business;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aut.mrking.domain.DanToc;
import aut.mrking.domain.Huyen;
import aut.mrking.domain.NoiKCB;
import aut.mrking.domain.QuocTich;
import aut.mrking.domain.Tinh;
import aut.mrking.domain.Xa;
import aut.mrking.repository.DanTocRepotory;
import aut.mrking.repository.HuyenRepotory;
import aut.mrking.repository.NoiKCBRepotory;
import aut.mrking.repository.QuocTichRepotory;
import aut.mrking.repository.TinhRepotory;
import aut.mrking.repository.XaRepotory;

@Service
public class ImportExcelDataBusiness {
    @Autowired
    private AcessExcelFileBusiness acessExcelFileBusiness;

    @Autowired
    private DanTocRepotory danTocRepotory;
    @Autowired
    private QuocTichRepotory quocTichRepotory;
    @Autowired
    private TinhRepotory tinhRepotory;
    @Autowired
    private NoiKCBRepotory noiKCBRepotory;
    @Autowired
    private HuyenRepotory huyenRepotory;
    @Autowired
    private XaRepotory xaRepotory;

    public void importData(InputStream is) throws IOException {
        Workbook wb = acessExcelFileBusiness.getWorkbook(is);
        importDanToc(wb);
        importQuocTich(wb);
        importTinh(wb);
        importNoiKCB(wb);
        importHuyen(wb);
        importXa(wb);
    }

    private void importDanToc(Workbook wb) {
        if (danTocRepotory.count() == 0) {
            Sheet sh = acessExcelFileBusiness.getSheet(wb, "MA_DT");
            List<DanToc> dsDanToc = acessExcelFileBusiness.layDSDanToc(sh);
            danTocRepotory.save(dsDanToc);
        }
    }

    private void importQuocTich(Workbook wb) {
        if (quocTichRepotory.count() == 0) {
            Sheet sh = acessExcelFileBusiness.getSheet(wb, "QUOC_TICH");
            List<QuocTich> dsQuocTich = acessExcelFileBusiness.layDSQuocTich(sh);
            quocTichRepotory.save(dsQuocTich);
        }
    }

    private void importTinh(Workbook wb) {
        if (tinhRepotory.count() == 0) {
            Sheet sh = acessExcelFileBusiness.getSheet(wb, "MA_TINH");
            List<Tinh> dsTinh = acessExcelFileBusiness.layDSTinh(sh);
            tinhRepotory.save(dsTinh);
        }
    }

    private void importNoiKCB(Workbook wb) {
        if (noiKCBRepotory.count() == 0) {
            Sheet sh = acessExcelFileBusiness.getSheet(wb, "MA_BENH VIEN");
            List<NoiKCB> dsNoiKCB = acessExcelFileBusiness.layDSNoiKCB(sh);
            noiKCBRepotory.save(dsNoiKCB);
        }
    }

    private void importHuyen(Workbook wb) {
        if (huyenRepotory.count() == 0) {
            Sheet sh = acessExcelFileBusiness.getSheet(wb, "MA_TINH_PXA_QHUYEN_QH_NPT");
            List<Huyen> dsHuyen = acessExcelFileBusiness.layDSHuyen(sh);
            huyenRepotory.save(dsHuyen);
        }
    }

    private void importXa(Workbook wb) {
        if (xaRepotory.count() == 0) {
            Sheet sh = acessExcelFileBusiness.getSheet(wb, "MA_TINH_PXA_QHUYEN_QH_NPT");
            List<Xa> dsXa = acessExcelFileBusiness.layDSXa(sh);
            xaRepotory.save(dsXa);
        }
    }
}
