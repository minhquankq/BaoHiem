package aut.mrking.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "donvi")
public class DonVi {

    @Id
    private String id;

    @Column(nullable = false)
    private String ten;

    @Column(nullable = false)
    private String matkhau;

    @Column(nullable = true)
    private String token;

    @ManyToOne
    private CoSo coSo;

    public DonVi() {
    }

    public DonVi(String id, String ten, String matkhau, String token, CoSo coSo) {
        super();
        this.id = id;
        this.ten = ten;
        this.matkhau = matkhau;
        this.token = token;
        this.coSo = coSo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public CoSo getCoSo() {
        return coSo;
    }

    public void setCoSo(CoSo coSo) {
        this.coSo = coSo;
    }

}
