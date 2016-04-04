package aut.mrking.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tinh")
public class Tinh {
    @Id
    private Long id;

    @Column(name = "ten")
    private String ten;

    @Column(name = "matinh", nullable = true, unique = true)
    private Long maTinh;

    public Tinh() {
    }

    public Tinh(Long id, String ten) {
        super();
        this.id = id;
        this.ten = ten;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Long getMaTinh() {
        return maTinh;
    }

    public void setMaTinh(Long maTinh) {
        this.maTinh = maTinh;
    }

}
