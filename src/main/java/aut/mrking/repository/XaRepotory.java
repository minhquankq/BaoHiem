package aut.mrking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import aut.mrking.domain.Xa;

public interface XaRepotory extends CrudRepository<Xa, Long> {
    @Query("select x from Xa x where x.huyen.id = ?1 and (x.id = ?2 or x.ten like %?3% )")
    List<Xa> layDSXa(Long huyenId, Long id, String tuKhoa);
}
