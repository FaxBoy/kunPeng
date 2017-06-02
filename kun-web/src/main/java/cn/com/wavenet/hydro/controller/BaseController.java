package cn.com.wavenet.hydro.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

public class BaseController {

	@Resource
	protected HttpServletRequest request;
	
	/**
	 * 获取参数
	 * author:shilun
	 * 2016年3月18日下午4:31:55
	 * description:
	 * @return: 
	 */
	public Map<String, Object> getParameterMap(){
		Map<String, Object> params = new HashMap<String, Object>();
		Map<?,?> parameterMap = request.getParameterMap();
		if (parameterMap != null) {
			Object[] keyList = parameterMap.keySet().toArray();
			for (int i = 0; i < keyList.length; i++) {
				String key = (String) keyList[i];
				Object value = parameterMap.get(key);

				if (value.getClass() == String[].class) {
					String[] temp = (String[]) value;
					if (temp.length == 1) {
						if(temp[0] == null || temp[0].trim().length()==0 || ("").equals(temp[0]))
							continue;
						value = temp[0];
					}
				}
				params.put(key, value);
			}
		}
		return params;
	}	
	
	public String getAppPath(){
		return request.getSession().getServletContext().getRealPath("");
	}
	
}
