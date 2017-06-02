package cn.com.wavenet.security.service;

import java.util.List;
import cn.com.wavenet.hydro.pojo.Users;
import cn.com.wavenet.hydro.service.ServiceSupport;


/** 
 * @ClassName: WavenetUserService 
 * @Description: 业务层-用户数据访问接口
 */
public interface WavenetUserService extends ServiceSupport<Users, String>{
	/** 
	 * @Title: findUser 
	 * @Description: 查询用户 ，根据用户所在单位或部门ID进行查询
	 * @param deptCode
	 * @return List<WtSysUser>    返回类型 
	 * @throws 
	 */ 
	List<Users> findUser(String deptCode);
	
	/** 
	 * @Title: insertSelective 
	 * @Description: 添加用户
	 * @param deptCode
	 * @return Integer    返回类型 
	 * @throws 
	 */
	Integer insertSelective(Users users);
	
	/** 
	 * @Title: insertSelective 
	 * @Description: 查看单条信息用户
	 * @param deptCode
	 * @return Users    返回类型 
	 * @throws 
	 */
	Users selectByPrimaryKey(String cdUs);
	
	/** 
	 * @Title: insertSelective 
	 * @Description: 删除单条信息用户
	 * @param deptCode
	 * @return Users    返回类型 
	 * @throws 
	 */
	Integer updateByUsercdUs(Users users);
	
	/** 
	 * @Title: insertSelective 
	 * @Description: 修改单条信息用户
	 * @param deptCode
	 * @return Integer    返回类型 
	 * @throws 
	 */
	Integer updateByPrimaryKey(Users users);
	
	/** 
	 * @Title: findUserInfomation 
	 * @Description: 用户分页查询 
	 * @param vo
	 * @return Page<WtSysUser> 
	 * @throws 
	 */ 
	//Page<Users> findUserInfomation(final PageRequestVo vo);
	/** 
	 * @Title: srlectUserAll 
	 * @Description: 查询用户列表 
	 * @return List<Users> 
	 * @throws 
	 */
	List<Users> srlectUserAll();
	/** 
	 * @Title: findDeptAndUsers 
	 * @Description: 查询部门信息
	 * @return List<WtSysDept> 
	 * @throws 
	 */ 
	//List<WtSysDept> findByDept();
	/** 
	 * @Title: editorUser 
	 * @Description: 编辑用户
	 * @param user
	 * @return WtSysUser 
	 * @throws 
	 */ 
	Users editorUser(Users user);
	/** 
	 * @Title: findAllDuty 
	 * @Description: 查询所有职位
	 * @return List<WtSysDuty> 
	 * @throws 
	 */ 
	//List<WtSysDuty> findAllDuty();
	/** 
	 * @Title: findUserOne 
	 * @Description: 根据用户ID查询用户的信息
	 * @param userId
	 * @return WtSysUser 
	 * @throws 
	 */ 
	Users findUserOne(String userId);
	/** 
	 * @Title: findByUserDept 
	 * @Description: 组织结构树结构查询包含部门及用户
	 * @param
	 * @return List<UserDeptBean>    返回类型 
	 * @throws 
	 */ 
	//List<UserDeptBean> findByUserDept();
	/** 
	 * @Title: findByUserDeptPanel 
	 * @Description: 组织结构树结构查询包含部门及用户(专家组)
	 * @param
	 * @return List<UserDeptBean>    返回类型 
	 * @throws 
	 */ 
	//List<UserDeptBean> findByUserDeptPanel();
	
	/**
	 * @Description: 返回区县列表
	 * @return
	 */
	//List<WtSysArea> findAreaList();
	
}
