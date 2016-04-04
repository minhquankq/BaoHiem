package aut.mrking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import aut.mrking.domain.DonVi;

public interface DonViRepository extends CrudRepository<DonVi, String> {
    @Override
    List<DonVi> findAll();

    @Query("select dv from DonVi dv where dv.id = ?1 and dv.matkhau = ?2")
    DonVi login(String maDonVi, String matKhau);

    @Query("select count(dv) > 0 from DonVi dv where dv.id = ?1 and dv.token = ?2")
    boolean checkToken(String maDonVi, String token);
}
