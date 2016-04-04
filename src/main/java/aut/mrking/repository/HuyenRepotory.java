package aut.mrking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import aut.mrking.domain.Huyen;

public interface HuyenRepotory extends CrudRepository<Huyen, Long> {
    @Query("select h from Huyen h where h.tinh.id = ?1 and (h.id = ?2 or h.ten like %?3% )")
    List<Huyen> layDSHuyen(Long tinhId, Long id, String tuKhoa);
}
