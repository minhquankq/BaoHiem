package aut.mrking.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import aut.mrking.domain.HocSinh;
import aut.mrking.domain.TrangThai;

@Transactional
public interface HocSinhRepotory extends CrudRepository<HocSinh, Long> {
    @Query("select hs from HocSinh hs where hs.donVi.id = ?1")
    List<HocSinh> layDSHocSinhTheoDonVi(String maDonVi);
    
    @Modifying(clearAutomatically = true)
    @Query("UPDATE HocSinh hs SET hs.maPB = ?2 WHERE hs.id IN ?1")
    void capNhatLopHoc(List<Long> ids, String maPB);

    @Modifying(clearAutomatically = true)
    @Query("UPDATE HocSinh hs SET hs.trangThai = ?2 WHERE hs.id IN ?1")
	void capNhatTrangThai(List<Long> ids, TrangThai trangThai);
    
    @Query("select hs from HocSinh hs where hs.donVi.coSo.id = ?1 and hs.trangThai = aut.mrking.domain.TrangThai.CHO_DUYET")
    List<HocSinh> layDSHocSinhCanDuyetTheoCoSo(String maCoSo);
}
