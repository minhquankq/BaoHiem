package aut.mrking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import aut.mrking.domain.Tinh;

public interface TinhRepotory extends CrudRepository<Tinh, Long> {
    @Query("select t from Tinh t where t.maTinh = ?1")
    Tinh timTinhTheoMaTinh(String maTinh);

    @Query("select t from Tinh t where  t.id = ?1 or t.ten like ?2%")
    List<Tinh> layDSTinh(Long id, String tuKhoa);
}
