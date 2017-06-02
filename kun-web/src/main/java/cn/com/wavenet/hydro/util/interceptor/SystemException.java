package cn.com.wavenet.hydro.util.interceptor;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

/**
 * 
* @ClassName: SystemException 
* @Description: TODO(异常封装类) 
* @author shil
* @date 2017年5月4日 下午12:57:09 
*
 */
public class SystemException extends RuntimeException {

	/** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;
	
	ResponseEntity<ErrorMessage> responseEntity;  
	  
    public SystemException(ResponseEntity<ErrorMessage> responseEntity, Throwable cause) {  
        super(((ErrorMessage)responseEntity.getBody()).getMessage(), cause);  
        this.responseEntity = responseEntity;  
    }  
  
    public SystemException(ErrorMessage errorMessage, HttpStatus status, Throwable cause) {  
        this(new ResponseEntity(errorMessage, status), cause);  
    }  
  
    public SystemException(String code, String message, HttpStatus status, Throwable cause) {  
        this(new ErrorMessage(code, message), status, cause);  
    }  
  
    public SystemException(String code, String message, HttpStatus status) {  
        this(code, message, (HttpStatus)status, (Throwable)null);  
    }
}
