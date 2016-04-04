package aut.mrking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import aut.mrking.domain.NoiKCB;

public interface NoiKCBRepotory extends CrudRepository<NoiKCB, Long> {
    @Query("select kcb from NoiKCB kcb where kcb.tinh.id = ?1 and (kcb.ten like %?2% or kcb.ma like %?2%)")
    List<NoiKCB> layDSNoiKCB(Long tinhId, String tuKhoa);
}
