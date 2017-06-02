package cn.com.wavenet.hydro.service.impl;

import org.springframework.stereotype.Service;

import cn.com.wavenet.hydro.service.RedisTestService;

@Service
public class RedisTestServiceImpl implements RedisTestService {
	
	public String getTimestamp(String param) {
		Long timestamp = System.currentTimeMillis();
		return timestamp.toString();
	}

}
