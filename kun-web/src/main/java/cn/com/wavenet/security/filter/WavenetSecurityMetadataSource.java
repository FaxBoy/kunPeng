package cn.com.wavenet.security.filter;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

import cn.com.wavenet.hydro.pojo.Resources;
import cn.com.wavenet.security.service.WavenetResourceService;


/**
 * @ClassName: MySecurityMetadataSource
 * @Description: TODO
 * 资源与权限的对应关系
 */
public class WavenetSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {
	//由spring调用
	
	WavenetResourceService wavenetResourceServiceImpl;
	public WavenetSecurityMetadataSource(WavenetResourceService wavenetResourceServiceImpl) {
		this.wavenetResourceServiceImpl = wavenetResourceServiceImpl;
		loadResourceDefine();
	}
	private static Map<String, Collection<ConfigAttribute>> resourceMap = null;


	public Collection<ConfigAttribute> getAllConfigAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return true;
	}
	//加载所有资源与权限的关系
	private void loadResourceDefine() {
		if(resourceMap == null) {
			resourceMap = new HashMap<String, Collection<ConfigAttribute>>();
			List<Resources> resources = wavenetResourceServiceImpl.findAllResource();
			System.out.println();
			for (Resources resource : resources) {
				Collection<ConfigAttribute> configAttributes = new ArrayList<ConfigAttribute>();
                              //以权限名封装为Spring的security Object
				//ConfigAttribute configAttribute = new SecurityConfig(resource.getStNm());
				if(null==resource.getStAph()){
					continue;
				}
				ConfigAttribute configAttribute = new SecurityConfig(resource.getStAph());
				configAttributes.add(configAttribute);
				System.out.println("================"+resource.getStAph());
				
				resourceMap.put(resource.getStAph(), configAttributes);
			}
		}
	}
	//返回所请求资源所需要的权限
	public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
		String requestUrl = ((FilterInvocation) object).getRequestUrl();
		System.out.println("请求的路径是：" + requestUrl);
		if(requestUrl.contains("?")){
			requestUrl = requestUrl.substring(0, requestUrl.indexOf("?"));
		}
		if(resourceMap == null) {
			loadResourceDefine();
		}
		return resourceMap.get(requestUrl);
	}
	
}