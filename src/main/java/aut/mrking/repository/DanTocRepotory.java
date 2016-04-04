package aut.mrking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import aut.mrking.domain.DanToc;

public interface DanTocRepotory extends CrudRepository<DanToc, Long> {

    @Query("select dt from DanToc dt where dt.id = ?1 or dt.ten like %?2%")
    List<DanToc> layDSDanToc(Long id, String tuKhoa);

}
