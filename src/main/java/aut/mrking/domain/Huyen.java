package aut.mrking.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "huyen")
public class Huyen {
    @Id
    private Long id;

    @Column(name = "ten")
    private String ten;

    @ManyToOne
    @JoinColumn(name = "matinh")
    private Tinh tinh;

    public Huyen() {
    }

    public Huyen(Long id, String ten, Tinh tinh) {
        super();
        this.id = id;
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

}
