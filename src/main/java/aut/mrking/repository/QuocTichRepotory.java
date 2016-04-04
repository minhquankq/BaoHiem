package aut.mrking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import aut.mrking.domain.QuocTich;

public interface QuocTichRepotory extends CrudRepository<QuocTich, Long> {
    @Query("select qt from QuocTich qt where qt.id = ?1 or qt.ten like ?2%")
    List<QuocTich> layDSQuocTich(Long id, String tuKhoa);
}
