package mouse;

import redis.clients.jedis.Jedis;

public class redisTest {
	
	public static void main(String[] args) {
		Jedis redis = new Jedis("172.18.1.204",6379);
		//jdeis.auth("root");
		//jdeis.set("ff", "sfdafds");
		//jdeis.del("ff");
		System.out.println(redis.get("test"));
	}
	
}
