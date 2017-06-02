package cn.com.wavenet.security.service;

import java.util.List;

import cn.com.wavenet.hydro.pojo.Role;
import cn.com.wavenet.hydro.pojo.RoleUser;
import cn.com.wavenet.hydro.service.ServiceSupport;


/** 
 * @ClassName: WavenetRoleService 
 * @Description: 业务层-用户数据访问接口
 */
public interface WavenetRoleService extends ServiceSupport<Role, String>{
	/** 
	 * @Title: findRoleInfomation 
	 * @Description: 角色信息分页
	 * @param vo
	 * @return Page<WtSysRole> 
	 * @throws 
	 */ 
	//Page<WtSysRole> findRoleInfomation(final PageRequestVo vo);
	/** 
	 * @Title: findAllRoles 
	 * @Description: 读取所有角色信息
	 * @return List<WtSysRole> 
	 * @throws 
	 */ 
	List<Role> findAllRoles();
	/** 
	 * @Title: findByUserHasRole 
	 * @Description: 查找用户拥有的角色 或者查找角色下的所有用户，
	 * 				 usercode根据查找用户拥有的角色将rolecode设置为null，
	 * 				 rolecode根据查找角色下的所有用户将usercode设置为null。
	 * @param usercode
	 * @return List<WtSysRoleuser>    返回类型 
	 * @throws 
	 */ 
	public List<RoleUser> findByUserHasRole(final String usercode, final String rolecode);
	/** 
	 * @Title: saveRoleHasUser 
	 * @Description: 设置角色所拥有的用户
	 * @param rulist
	 * @param rolecode
	 * @return boolean 
	 * @throws 
	 */ 
	public boolean saveRoleHasUser(List<RoleUser> rulist,String rolecode);
	
	List<RoleUser> getUserRole(String cdUs);
}
