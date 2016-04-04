package aut.mrking.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "noikcb")
public class NoiKCB {
    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @ManyToOne
    private Tinh tinh;

    public NoiKCB() {
    }

    public NoiKCB(String ma, String ten, Tinh tinh) {
        super();
        this.ma = ma;
        this.ten = ten;
        this.tinh = tinh;
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

    public Tinh getTinh() {
        return tinh;
    }

    public void setTinh(Tinh tinh) {
        this.tinh = tinh;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

}
