package cn.com.wavenet.hydro.pojo;

import java.io.Serializable;

public class RoleUser implements Serializable{
    /** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;

	private String cdUsrl;

    private String cdRl;

    private String cdUs;

    public String getCdUsrl() {
        return cdUsrl;
    }

    public void setCdUsrl(String cdUsrl) {
        this.cdUsrl = cdUsrl == null ? null : cdUsrl.trim();
    }

    public String getCdRl() {
        return cdRl;
    }

    public void setCdRl(String cdRl) {
        this.cdRl = cdRl == null ? null : cdRl.trim();
    }

    public String getCdUs() {
        return cdUs;
    }

    public void setCdUs(String cdUs) {
        this.cdUs = cdUs == null ? null : cdUs.trim();
    }
}