package aut.mrking.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dantoc")
public class DanToc {
    @Id
    private Long id;

    @Column(name = "ten")
    private String ten;

    public DanToc() {
    }

    public DanToc(Long id, String ten) {
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

}
