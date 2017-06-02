package cn.com.wavenet.hydro.util.interceptor;

import org.springframework.http.HttpStatus;

import cn.com.wavenet.hydro.util.global.ErrorCode;

/**
 * 
* @ClassName: BaseException 
* @Description: TODO(异常封装类) 
* @author shil
* @date 2017年5月4日 下午12:57:23 
*
 */
public class BaseException extends SystemException{

	/** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;

	public BaseException(ErrorCode errorCode) {  
        super(errorCode.getCode(), errorCode.getMessage(),errorCode.getHttpStatus());  
    } 
	
	public BaseException(ErrorMessage errorMessage, HttpStatus status, Throwable cause) {
		super(errorMessage, status, cause);
	}

}
