package cn.com.wavenet.security.filter;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import cn.com.wavenet.hydro.pojo.Resources;
import cn.com.wavenet.hydro.pojo.Users;



public class WavenetUser extends User{
	
	/** @Fields usercode : 用户ID */
	private String usercode;
	/**
	 * @return the usercode
	 */
	public String getUsercode() {
		return usercode;
	}
	
	private List<Resources> resourceList;
	
	private Users users;

	/**
	 * @param usercode the usercode to set
	 */
	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}

	/**
	 * <p>Title: </p>
	 * <p>Description: </p> 
	 * @param username
	 * @param password
	 * @param enabled
	 * @param accountNonExpired
	 * @param credentialsNonExpired
	 * @param accountNonLocked
	 * @param authorities
	 */
	public WavenetUser(String username, String password, boolean enabled,
			boolean accountNonExpired, boolean credentialsNonExpired,
			boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
		
		super(username, password, enabled, accountNonExpired, credentialsNonExpired,
				accountNonLocked, authorities);
	}

	/** @Fields serialVersionUID : TODO */
	private static final long serialVersionUID = 1L;
	
	

	public List<Resources> getResourceList() {
		return resourceList;
	}

	public void setResourceList(List<Resources> resourceList) {
		this.resourceList = resourceList;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	

}
