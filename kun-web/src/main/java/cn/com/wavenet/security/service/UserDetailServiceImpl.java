package cn.com.wavenet.security.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.apache.log4j.Logger;
import org.springframework.jmx.export.notification.UnableToSendNotificationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import cn.com.wavenet.hydro.dao.ResourceDao;
import cn.com.wavenet.hydro.dao.UsersDao;
import cn.com.wavenet.hydro.pojo.Resources;
import cn.com.wavenet.hydro.pojo.RoleResource;
import cn.com.wavenet.hydro.pojo.Users;
import cn.com.wavenet.security.filter.WavenetUser;

/**
 * @ClassName: UserDetailServiceImpl
 * @Description: 用户业务实现类
 */
@Service
public class UserDetailServiceImpl  implements UserDetailsService{
	@Resource
	UsersDao  wsurepos;
	@Resource
	ResourceDao  resourceDao;
	@Resource
	WavenetResourceService wavenetResourceServiceImpl;
	@Resource
	WavenetRoleService wavenetRoleServiceImpl;
	private static final Logger logger = Logger.getLogger(UserDetailServiceImpl.class);  
	
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		if (logger.isDebugEnabled()) {
			logger.debug("loadUserByUsername(String) - start");  
		}
		if(null==username){
			logger.debug("username is null");  
		}
		Users users = wsurepos.findByStLgnm(username);
		
		if(users == null) {
			String message = "用户：["+username +"]不存在";
			logger.error(message);
			throw new UsernameNotFoundException(message);
		}
		//判断用户是否被逻辑删除
		if(users.getStStatus().equals("0")){
			String message = "用户：["+username +"]已失效";
			logger.error(message);
			throw new UnableToSendNotificationException(message);
		}
		
		Collection<GrantedAuthority> grantedAuths = obtionGrantedAuthorities(users);
		List<Resources> resourceList = resourceDao.getUserResourceByLgnm(username);
		boolean enables = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;
		WavenetUser userdetail = new WavenetUser(users.getStLgnm(), users.getStLgps(), enables, accountNonExpired, credentialsNonExpired, accountNonLocked, grantedAuths);
		userdetail.setUsercode(users.getCdUs());
		userdetail.setResourceList(resourceList);
		Users nuser = new Users();
		nuser.setCdUs(users.getCdUs());
		nuser.setStAreaid(users.getStAreaid());
//		nuser.setUserLevel(users.getUserLevel());
		userdetail.setUsers(nuser);
		return userdetail;
	}
	//取得用户的权限
	private Set<GrantedAuthority> obtionGrantedAuthorities(Users user) {
		Set<GrantedAuthority> authSet = new HashSet<GrantedAuthority>();
		List<Resources> resources =wavenetResourceServiceImpl.getUserResourceByLgnm(user.getStLgnm());
		for(Resources resource : resources) {
			if (logger.isDebugEnabled()) {
				logger.debug("用户：[" + user.getStLgnm() + "]拥有资源：["
						+ resource.getStAph() + "],即spring security中的access");
			}
			try {
				if(null==resource || null==resource.getStAph()){
					continue;
				}
				authSet.add(new SimpleGrantedAuthority(resource.getStAph()));
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("="+e.getMessage());
			}
		
		}
		if (logger.isDebugEnabled()) {
			logger.debug("loadUserByUsername(String) - end"); 
		}
		return authSet;
	}
	
	//已有方法
	/*private List<Resource> getUserResourceByLgnm(String lgnm){
		EntityManager em = emf.createEntityManager();
		StringBuilder sb = new StringBuilder()
		.append("select res.* ")
		.append("from wt_sys_user u left join wt_sys_roleuser r on u.cd_us=r.cd_us ")
		.append("left join wt_sys_roleresource s on r.cd_rl=s.cd_rl ")
		.append("left join wt_sys_resource res on res.cd_res=s.cd_res ")
		.append("where u.st_lgnm='"+lgnm+"'");
		List<Resource> list =em.createNativeQuery(sb.toString(), WtSysResource.class).getResultList();
		em.close();
		return list;
	}*/
}
