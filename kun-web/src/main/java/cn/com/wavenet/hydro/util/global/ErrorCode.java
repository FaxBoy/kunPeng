package cn.com.wavenet.hydro.util.global;

import org.springframework.http.HttpStatus;

/**
 * 
* @ClassName: ErrorCode 
* @Description: TODO(这里用一句话描述这个类的作用) 
* 错误代码汇总枚举
* 所有错误代码及其描述统一都在这个枚举上添加，统一管理，方便查看，并与SystemException联合使用
* @author shil
* @date 2017年5月4日 下午12:47:27 
*
 */
public enum ErrorCode {

    /**
     * 权限相关
     */
    ACCESS_DENIED(HttpStatus.FORBIDDEN, "ACCESS_DENIED","访问被拒绝"),

    /**
     * 数据不存在
     */
    NOT_FOUND(HttpStatus.NOT_FOUND, "NOT_FOUND", "数据不存在"),

    //参数错误
    BAD_REQUEST(HttpStatus.BAD_REQUEST, "BAD_REQUEST", ""),
    REQUIRE_ARGUMENT(HttpStatus.BAD_REQUEST, "REQUIRE_ARGUMENT", "缺少参数"),
    INVALID_ARGUMENT(HttpStatus.BAD_REQUEST, "INVALID_ARGUMENT", "非法参数"),
    EMPTY_ROLES_NOT_ALLOWED(HttpStatus.BAD_REQUEST, "EMPTY_ROLES_NOT_ALLOWED", "角色不能为空"),

    /**
     * 服务不可用
     */
    SERVICE_UNAVAILABLE(HttpStatus.SERVICE_UNAVAILABLE, "SERVICE_UNAVAILABLE", "服务不可用");

    private HttpStatus httpStatus;
    private String code;
    private String message;
    private static final String PCC_CODE_PREFIX = "PCC_SERVER/";

    ErrorCode(HttpStatus httpStatus, String code, String message) {
        setHttpStatus(httpStatus);
        setCode(code);
        setMessage(message);
    }

    public HttpStatus getHttpStatus() {
        return this.httpStatus;
    }

    public void setHttpStatus(HttpStatus httpStatus) {
        this.httpStatus = httpStatus;
    }

    public String getCode() {
        return PCC_CODE_PREFIX + this.code;
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
}