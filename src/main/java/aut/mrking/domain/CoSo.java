package aut.mrking.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "coso")
public class CoSo {

    @Id
    private String id;

    @Column(nullable = false)
    private String ten;

    @Column(nullable = false)
    private String matkhau;

    @Column(nullable = true)
    private String token;

    public CoSo() {
    }

    public CoSo(String id, String ten, String matkhau, String token) {
        super();
        this.id = id;
        this.ten = ten;
        this.matkhau = matkhau;
        this.token = token;
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

}
