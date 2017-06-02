package cn.com.wavenet.security.filter;

import java.util.Collection;
import java.util.Iterator;

import org.apache.log4j.Logger;
import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;

/**
 * @ClassName: WavenetAccessDecisionManager
 * @Description: 访问控制决策管理
 */
public class WavenetAccessDecisionManager implements AccessDecisionManager {
	/**
	 * @Fields logger : 系统日志
	 */
	private static final Logger logger = Logger.getLogger(WavenetAccessDecisionManager.class);
	public void decide(Authentication authentication, Object object, Collection<ConfigAttribute> configAttributes) throws AccessDeniedException, InsufficientAuthenticationException {
		if (logger.isDebugEnabled()) {
			logger.debug("decide(Authentication, Object, Collection<ConfigAttribute>) - start");
		}
		
		
		if (configAttributes == null) {
			if (logger.isDebugEnabled()) {
				logger.debug("decide(Authentication, Object, Collection<ConfigAttribute>) - end"); // $N
			}
			return;
		}
		if (logger.isDebugEnabled()) {
			logger.debug("正在访问的url是：" + object.toString());
		}
		//所请求的资源拥有的权限(一个资源对多个权限)
		Iterator<ConfigAttribute> iterator = configAttributes.iterator();
		while(iterator.hasNext()) {
			ConfigAttribute configAttribute = iterator.next();
			//访问所请求资源所需要的权限
			String needPermission = configAttribute.getAttribute();
			System.out.println("needPermission is " + needPermission);
			
			//用户所拥有的权限authentication
			for(GrantedAuthority ga : authentication.getAuthorities()) {
				 logger.debug("\t授权信息是："+ga.getAuthority());  
				if(needPermission==ga.getAuthority() || needPermission.equals(ga.getAuthority())) {
					if (logger.isDebugEnabled()) {
						logger.debug("判断到，needRole 是" + needPermission + ",用户的角色是:"
								+ ga.getAuthority() + "，授权数据相匹配");
						logger.debug("decide(Authentication, Object, Collection<ConfigAttribute>) - end");
					}
					return;
				}
			}
		}
		//没有权限
		throw new AccessDeniedException(" 没有权限访问！ ");
	}

	public boolean supports(ConfigAttribute attribute) {
		
		
		// TODO Auto-generated method stub
		return true;
	}

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return true;
	}
	
}