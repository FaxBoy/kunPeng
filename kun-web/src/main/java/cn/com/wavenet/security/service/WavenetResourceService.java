package cn.com.wavenet.security.service;

import java.util.List;


import cn.com.wavenet.hydro.pojo.Resources;
import cn.com.wavenet.hydro.pojo.RoleResource;


/** 
 * @ClassName: WavenetUserService 
 * @Description: 业务层-用户数据访问接口
 */
public interface WavenetResourceService {
	/** 
	 * @Title: findResourceInfomation 
	 * @Description: 资源目录分页查询
	 * @param vo
	 * @return Page<WtSysResource> 
	 * @throws 
	 */ 
	//Page<Resource> findResourceInfomation(final PageRequestVo vo);
	/** 
	 * @Title: findAllResources 
	 * @Description: 根据ID查询资源
	 * @param id
	 * @return List<WtSysResource> 
	 * @throws 
	 */ 
	List<Resources> findAllResources(String id);
	/** 
	 * @Title: findResourceRootNodes 
	 * @Description: 资源根节点查找
	 * @return List<WtSysResource> 
	 * @throws 
	 */ 
	List<Resources> findResourceRootNodes();
	/** 
	 * @Title: findUserHasResourceAndRole 
	 * @Description: 用户所拥有的角色资源
	 * @param 
	 * @param 
	 * @return List<WtSysRoleresource>    返回类型 
	 * @throws 
	 */ 
	public List<RoleResource> findUserHasResourceAndRole(String username);
	/** 
	 * @Title: findUserHasResourceAndRole 
	 * @Description: 用户所有的所有访问资源
	 * @param usercode
	 * @return    设定文件 
	 * @return List<WtSysRoleresource>    返回类型 
	 * @throws 
	 */ 
	//public List<Resources> findUserHasResource(String username);
	
	List<Resources> findAllResource();
	
	List<Resources> getUserResourceByLgnm(String stLgnm);
	
	/*public List<RoleResource> findByRoleHasResource(String rolecode);
	
	public List<RoleResource> saveRoleHasResource(List<RoleResource> rhr,String rolecode);
	*/
}
