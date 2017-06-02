package cn.com.wavenet.hydro.pojo;

import java.io.Serializable;

public class RoleResource implements Serializable{
    /** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;

	private String cdRlres;

    private String cdRl;

    private String cdRes;

    public String getCdRlres() {
        return cdRlres;
    }

    public void setCdRlres(String cdRlres) {
        this.cdRlres = cdRlres == null ? null : cdRlres.trim();
    }

    public String getCdRl() {
        return cdRl;
    }

    public void setCdRl(String cdRl) {
        this.cdRl = cdRl == null ? null : cdRl.trim();
    }

    public String getCdRes() {
        return cdRes;
    }

    public void setCdRes(String cdRes) {
        this.cdRes = cdRes == null ? null : cdRes.trim();
    }
}