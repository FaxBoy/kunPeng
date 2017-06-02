package cn.com.wavenet.hydro.util.interceptor;

import java.io.Serializable;

public class ErrorMessage implements Serializable{

	/** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;

	
	private String code;  
    private String message;  
    private String detail;  
  
    public ErrorMessage() {  
    }  
  
    public ErrorMessage(String code) {  
        this(code, (String)null, (String)null);  
    }  
  
    public ErrorMessage(String code, String message) {  
        this(code, message, (String)null);  
    }  
  
    public ErrorMessage(String code, String message, String detail) {  
        this.code = code;  
        this.message = message;  
        this.detail = detail;  
    }  
  
    public String getCode() {  
        return this.code;  
    }  
  
    public void setCode(String code) {  
        this.code = code;  
    }  
  
    public String getMessage() {  
        return this.message;  
    }  
  
    public void setMessage(String message) {  
        this.message = message;  
    }  
  
    public String getDetail() {  
        return this.detail;  
    }  
  
    public void setDetail(String detail) {  
        this.detail = detail;  
    }  
}
