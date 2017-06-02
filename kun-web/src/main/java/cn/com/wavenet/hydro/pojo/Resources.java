package cn.com.wavenet.hydro.pojo;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.Transient;


public class Resources implements Serializable{
    /** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;

	private String cdRes;

    private String cdPres;

    private String stNm;

    private String stImg;

    private Short nmOd;

    private String stAph;

    private String stEph;

    private Short nmIsd;

    @Transient
	private List<Resources> children = new LinkedList<Resources>();
    
    
    public List<Resources> getChildren() {
		return children;
	}

	public void setChildren(List<Resources> children) {
		this.children = children;
	}

	public String getCdRes() {
        return cdRes;
    }

    public void setCdRes(String cdRes) {
        this.cdRes = cdRes == null ? null : cdRes.trim();
    }

    public String getCdPres() {
        return cdPres;
    }

    public void setCdPres(String cdPres) {
        this.cdPres = cdPres == null ? null : cdPres.trim();
    }

    public String getStNm() {
        return stNm;
    }

    public void setStNm(String stNm) {
        this.stNm = stNm == null ? null : stNm.trim();
    }

    public String getStImg() {
        return stImg;
    }

    public void setStImg(String stImg) {
        this.stImg = stImg == null ? null : stImg.trim();
    }

    public Short getNmOd() {
        return nmOd;
    }

    public void setNmOd(Short nmOd) {
        this.nmOd = nmOd;
    }

    public String getStAph() {
        return stAph;
    }

    public void setStAph(String stAph) {
        this.stAph = stAph == null ? null : stAph.trim();
    }

    public String getStEph() {
        return stEph;
    }

    public void setStEph(String stEph) {
        this.stEph = stEph == null ? null : stEph.trim();
    }

    public Short getNmIsd() {
        return nmIsd;
    }

    public void setNmIsd(Short nmIsd) {
        this.nmIsd = nmIsd;
    }
}