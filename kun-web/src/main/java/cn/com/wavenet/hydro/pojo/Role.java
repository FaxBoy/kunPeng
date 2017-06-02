package cn.com.wavenet.hydro.pojo;

import java.io.Serializable;

public class Role implements Serializable{
    /** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;

	private String cdRl;

    private String stNm;

    private String stDes;

    private Short nmOd;

    public String getCdRl() {
        return cdRl;
    }

    public void setCdRl(String cdRl) {
        this.cdRl = cdRl == null ? null : cdRl.trim();
    }

    public String getStNm() {
        return stNm;
    }

    public void setStNm(String stNm) {
        this.stNm = stNm == null ? null : stNm.trim();
    }

    public String getStDes() {
        return stDes;
    }

    public void setStDes(String stDes) {
        this.stDes = stDes == null ? null : stDes.trim();
    }

    public Short getNmOd() {
        return nmOd;
    }

    public void setNmOd(Short nmOd) {
        this.nmOd = nmOd;
    }
}