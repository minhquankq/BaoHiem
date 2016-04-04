package aut.mrking.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "xa")
public class Xa {
    @Id
    private Long id;

    @Column(name = "ten")
    private String ten;

    @ManyToOne
    private Huyen huyen;

    public Xa() {
    }

    public Xa(Long id, String ten, Huyen huyen) {
        super();
        this.id = id;
        this.ten = ten;
        this.huyen = huyen;
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

    public Huyen getHuyen() {
        return huyen;
    }

    public void setHuyen(Huyen huyen) {
        this.huyen = huyen;
    }

}
