package cn.com.wavenet.hydro.pojo;

import java.io.Serializable;
import java.util.Date;

public class Users implements Serializable{
    /** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;

	private String cdUs;

    private String cdDp;

    private String cdDt;

    private String stLgnm;

    private String stLgps;

    private String stNm;

    private Short nmAge;

    private Date dtBir;

    private String stHtel;

    private String stOtel;

    private String stAtel;

    private String stMtel;

    private String stMsn;

    private String stQq;

    private String stEmail;

    private String stImgph;

    private Short nmJoblh;

    private Date dtCreate;

    private Date dtLg;

    private Date dtBklg;

    private Short nmOd;

    private String stPcip;

    private String stAreaid;

    private String stUlvl;

    private String stStatus;

    public String getCdUs() {
        return cdUs;
    }

    public void setCdUs(String cdUs) {
        this.cdUs = cdUs == null ? null : cdUs.trim();
    }

    public String getCdDp() {
        return cdDp;
    }

    public void setCdDp(String cdDp) {
        this.cdDp = cdDp == null ? null : cdDp.trim();
    }

    public String getCdDt() {
        return cdDt;
    }

    public void setCdDt(String cdDt) {
        this.cdDt = cdDt == null ? null : cdDt.trim();
    }

    public String getStLgnm() {
        return stLgnm;
    }

    public void setStLgnm(String stLgnm) {
        this.stLgnm = stLgnm == null ? null : stLgnm.trim();
    }

    public String getStLgps() {
        return stLgps;
    }

    public void setStLgps(String stLgps) {
        this.stLgps = stLgps == null ? null : stLgps.trim();
    }

    public String getStNm() {
        return stNm;
    }

    public void setStNm(String stNm) {
        this.stNm = stNm == null ? null : stNm.trim();
    }

    public Short getNmAge() {
        return nmAge;
    }

    public void setNmAge(Short nmAge) {
        this.nmAge = nmAge;
    }

    public Date getDtBir() {
        return dtBir;
    }

    public void setDtBir(Date dtBir) {
        this.dtBir = dtBir;
    }

    public String getStHtel() {
        return stHtel;
    }

    public void setStHtel(String stHtel) {
        this.stHtel = stHtel == null ? null : stHtel.trim();
    }

    public String getStOtel() {
        return stOtel;
    }

    public void setStOtel(String stOtel) {
        this.stOtel = stOtel == null ? null : stOtel.trim();
    }

    public String getStAtel() {
        return stAtel;
    }

    public void setStAtel(String stAtel) {
        this.stAtel = stAtel == null ? null : stAtel.trim();
    }

    public String getStMtel() {
        return stMtel;
    }

    public void setStMtel(String stMtel) {
        this.stMtel = stMtel == null ? null : stMtel.trim();
    }

    public String getStMsn() {
        return stMsn;
    }

    public void setStMsn(String stMsn) {
        this.stMsn = stMsn == null ? null : stMsn.trim();
    }

    public String getStQq() {
        return stQq;
    }

    public void setStQq(String stQq) {
        this.stQq = stQq == null ? null : stQq.trim();
    }

    public String getStEmail() {
        return stEmail;
    }

    public void setStEmail(String stEmail) {
        this.stEmail = stEmail == null ? null : stEmail.trim();
    }

    public String getStImgph() {
        return stImgph;
    }

    public void setStImgph(String stImgph) {
        this.stImgph = stImgph == null ? null : stImgph.trim();
    }

    public Short getNmJoblh() {
        return nmJoblh;
    }

    public void setNmJoblh(Short nmJoblh) {
        this.nmJoblh = nmJoblh;
    }

    public Date getDtCreate() {
        return dtCreate;
    }

    public void setDtCreate(Date dtCreate) {
        this.dtCreate = dtCreate;
    }

    public Date getDtLg() {
        return dtLg;
    }

    public void setDtLg(Date dtLg) {
        this.dtLg = dtLg;
    }

    public Date getDtBklg() {
        return dtBklg;
    }

    public void setDtBklg(Date dtBklg) {
        this.dtBklg = dtBklg;
    }

    public Short getNmOd() {
        return nmOd;
    }

    public void setNmOd(Short nmOd) {
        this.nmOd = nmOd;
    }

    public String getStPcip() {
        return stPcip;
    }

    public void setStPcip(String stPcip) {
        this.stPcip = stPcip == null ? null : stPcip.trim();
    }

    public String getStAreaid() {
        return stAreaid;
    }

    public void setStAreaid(String stAreaid) {
        this.stAreaid = stAreaid == null ? null : stAreaid.trim();
    }

    public String getStUlvl() {
        return stUlvl;
    }

    public void setStUlvl(String stUlvl) {
        this.stUlvl = stUlvl == null ? null : stUlvl.trim();
    }

    public String getStStatus() {
        return stStatus;
    }

    public void setStStatus(String stStatus) {
        this.stStatus = stStatus == null ? null : stStatus.trim();
    }
}