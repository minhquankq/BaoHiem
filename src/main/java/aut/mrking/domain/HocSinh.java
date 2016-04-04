package aut.mrking.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "hocsinh")
public class HocSinh {
	@Id
	@GeneratedValue
	private Long id;

	@Column(name = "sodinhdanh", nullable = false, unique = true)
	private String soDinhDanh;

	@ManyToOne
	private DonVi donVi;

	@Column(name = "holot", nullable = false)
	private String hoLot;

	@Column(name = "ten", nullable = false)
	private String ten;

	@Column(name = "ngaysinh", nullable = false)
	private String ngaySinh;

	@Column(name = "gioitinh", nullable = false)
	private int gioiTinh;

	@ManyToOne
	private DanToc danToc;

	@ManyToOne
	private QuocTich quocTich;

	@ManyToOne
	private Tinh tinh;

	@ManyToOne
	private Huyen huyen;

	@ManyToOne
	private Xa xa;

	@Column(name = "khaisinhso", nullable = false)
	private int khaiSinhSo;

	@Column(name = "sokhaisinh", nullable = false)
	private String soKhaiSinh;

	@Column(name = "diachi", nullable = false)
	private String diaChi;

	@ManyToOne
	private Tinh tinhKCB;

	@ManyToOne
	private NoiKCB noiKCB;

	@Column(name = "mapb", nullable = false)
	private String maPB;

	@Column(name = "mathe", nullable = true)
	private String maThe;

	@Column(name = "sudungtu", nullable = true)
	private String suDungTu;

	@Column(name = "sudungden", nullable = true)
	private String suDungDen;
	
	@Column(name="trangthai", nullable = true) // Default (null) is chua duyet
	@Enumerated(EnumType.STRING)
	private TrangThai trangThai;

	public HocSinh() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSoDinhDanh() {
		return soDinhDanh;
	}

	public void setSoDinhDanh(String soDinhDanh) {
		this.soDinhDanh = soDinhDanh;
	}

	public DonVi getDonVi() {
		return donVi;
	}

	public void setDonVi(DonVi donVi) {
		this.donVi = donVi;
	}

	public String getHoLot() {
		return hoLot;
	}

	public void setHoLot(String hoLot) {
		this.hoLot = hoLot;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public int getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(int gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public DanToc getDanToc() {
		return danToc;
	}

	public void setDanToc(DanToc danToc) {
		this.danToc = danToc;
	}

	public QuocTich getQuocTich() {
		return quocTich;
	}

	public void setQuocTich(QuocTich quocTich) {
		this.quocTich = quocTich;
	}

	public Tinh getTinh() {
		return tinh;
	}

	public void setTinh(Tinh tinh) {
		this.tinh = tinh;
	}

	public Huyen getHuyen() {
		return huyen;
	}

	public void setHuyen(Huyen huyen) {
		this.huyen = huyen;
	}

	public Xa getXa() {
		return xa;
	}

	public void setXa(Xa xa) {
		this.xa = xa;
	}

	public int getKhaiSinhSo() {
		return khaiSinhSo;
	}

	public void setKhaiSinhSo(int khaiSinhSo) {
		this.khaiSinhSo = khaiSinhSo;
	}

	public String getSoKhaiSinh() {
		return soKhaiSinh;
	}

	public void setSoKhaiSinh(String soKhaiSinh) {
		this.soKhaiSinh = soKhaiSinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public Tinh getTinhKCB() {
		return tinhKCB;
	}

	public void setTinhKCB(Tinh tinhKCB) {
		this.tinhKCB = tinhKCB;
	}

	public NoiKCB getNoiKCB() {
		return noiKCB;
	}

	public void setNoiKCB(NoiKCB noiKCB) {
		this.noiKCB = noiKCB;
	}

	public String getMaPB() {
		return maPB;
	}

	public void setMaPB(String maPB) {
		this.maPB = maPB;
	}

	public String getMaThe() {
		return maThe;
	}

	public void setMaThe(String maThe) {
		this.maThe = maThe;
	}

	public String getSuDungTu() {
		return suDungTu;
	}

	public void setSuDungTu(String suDungTu) {
		this.suDungTu = suDungTu;
	}

	public String getSuDungDen() {
		return suDungDen;
	}

	public void setSuDungDen(String suDungDen) {
		this.suDungDen = suDungDen;
	}

	public TrangThai getTrangThai() {
		if(trangThai != null)
			return trangThai;

		return TrangThai.CHUA_DUYET;
	}

	public void setTrangThai(TrangThai trangThai) {
		this.trangThai = trangThai;
	}

	public void updateInfo(HocSinh hs) {
		this.soDinhDanh = hs.getSoDinhDanh();
		this.donVi = hs.getDonVi();
		this.hoLot = hs.getHoLot();
		this.ten = hs.getTen();
		this.ngaySinh = hs.getNgaySinh();
		this.gioiTinh = hs.getGioiTinh();
		this.danToc = hs.getDanToc();
		this.quocTich = hs.getQuocTich();
		this.tinh = hs.getTinh();
		this.huyen = hs.getHuyen();
		this.xa = hs.getXa();
		this.khaiSinhSo = hs.getKhaiSinhSo();
		this.soKhaiSinh = hs.getSoKhaiSinh();
		this.diaChi = hs.getDiaChi();
		this.tinhKCB = hs.getTinhKCB();
		this.noiKCB = hs.getNoiKCB();
		this.maPB = hs.getMaPB();
		this.maThe = hs.getMaThe();
		this.suDungTu = hs.getSuDungTu();
		this.suDungDen = hs.getSuDungDen();
		this.trangThai = hs.getTrangThai();
	}

	
}
