package mouse;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

import cn.com.wavenet.hydro.util.UUIDUtil;
import redis.clients.jedis.Jedis;

public class redisTest {
	
	public static void main(String[] args) {
		Jedis redis = new Jedis("172.18.1.204",6379);
		//jdeis.auth("root");
		//jdeis.set("ff", "sfdafds");
		//jdeis.del("ff");
		System.out.println(UUIDUtil.getUUID(32));
		System.out.println(UUIDUtil.getUUID(32));
		System.out.println(UUIDUtil.getUUID(32));
		System.out.println(UUIDUtil.getUUID(32));
		System.out.println(UUIDUtil.getUUID(8));
		
		Md5PasswordEncoder md5 = new Md5PasswordEncoder();
		String md5salf = md5.encodePassword("123","shich");
		System.out.println(md5salf);
		
		
	}
	
}
