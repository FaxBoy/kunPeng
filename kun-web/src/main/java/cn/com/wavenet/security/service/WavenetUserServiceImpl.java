package cn.com.wavenet.security.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.com.wavenet.hydro.dao.UsersDao;
import cn.com.wavenet.hydro.pojo.Users;
import cn.com.wavenet.hydro.service.impl.ServiceSupportImpl;

/** 
 * @ClassName: WavenetUserServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 */
@Service
public class WavenetUserServiceImpl extends ServiceSupportImpl<Users, String> implements WavenetUserService {
	
	@Resource
	UsersDao usersDao;
	/*@Resource
	WtSysUserRepository userRepository = null;
	@Resource
	WtSysDeptRepository deptRepository = null;
	@Resource
	WtSysDutyRepository dutyRepository = null;
	@Resource
	WtSysAreaRepository wtSysAreaRepository;
	@Resource
	EntityManagerFactory emf;*/
	@Override
	public List<Users> findUser(String deptCode) {
		/*userRepository.findAll();
		return null;*/
		return null;
	}
	
	public Users selectByPrimaryKey(String cdUs){
		return usersDao.selectByPrimaryKey(cdUs);
	};
	
	public Integer insertSelective(Users users) {
		Integer index =  usersDao.insertSelective(users);
		return index;
	}
	
	public List<Users> srlectUserAll(){
		//return userRepository.findOne(userId);
		return usersDao.selectUserAll();
	}
	
	public Integer updateByPrimaryKey(Users users){
		System.out.println(users.getStStatus());
		return usersDao.updateByPrimaryKeySelective(users);
	}
	/*	
	public Page<Users> findUserInfomation(final PageRequestVo vo){
		return userRepository.findAll(new Specification<WtSysUser>() {
			@Override
			public Predicate toPredicate(Root<WtSysUser> root, CriteriaQuery<?> query,
					CriteriaBuilder cb) {
				root.join(root.getModel().getSingularAttribute("wtSysDept", WtSysDept.class), JoinType.LEFT);
				root.join(root.getModel().getSingularAttribute("wtSysDuty", WtSysDuty.class), JoinType.LEFT); 
				Predicate predicate = cb.conjunction();
				List<Expression<Boolean>> expression = predicate.getExpressions();
				if(StringUtils.isNotBlank(vo.getStr("stNm"))){
					Path<String>  stnm = root.get("stNm");
					expression.add(cb.and(cb.like(stnm, "%"+vo.getStr("stNm")+"%")));
				}
				if(StringUtils.isNotBlank(vo.getStr("stMtel"))){
					Path<String>  stMtel = root.get("stMtel");
					expression.add(cb.and(cb.like(stMtel, "%"+vo.getStr("stMtel")+"%")));
				}
				//过滤已经删除的用户
				Path<String>  stStatus = root.get("stStatus");
				expression.add(cb.and(cb.equal(stStatus, "1")));
				
				if(StringUtils.isNotBlank(vo.getStr("cdDp"))){
					Path<String>  cddp = root.get("wtSysDept").get("cdDp");
				//	expression.add(cb.and(cb.equal(cddp, vo.getStr("cdDp"))) );
					String[] aa =(vo.getStr("cdDp").split(","));
					List<String> lt = new ArrayList<String>();
					for(String a:aa){
						lt.add(a);
					}
					expression.add(cb.and(cddp.in(lt)));
				}
				return predicate;
			}
		}, buildPageRequest(vo.getNumber(),vo.getSize()));
	}
	
	
	private PageRequest buildPageRequest(int pageNumber, int pagzSize){
		List<Order> sorts = new LinkedList<Order>();
		sorts.add(new Order(Direction.DESC,"cdUs"));
		return new PageRequest(pageNumber, pagzSize,new Sort(sorts));
	}
	
	public List<WtSysDept> findByDept(){
		return deptRepository.findAll();
	}*/
	
	public Users editorUser(Users user){
		//return userRepository.saveAndFlush(user);
		return null;
	}
	/*public List<WtSysDuty> findAllDuty(){
		return dutyRepository.findAll();
	}*/
	public Users findUserOne(String userId){
		//return userRepository.findOne(userId);
		return usersDao.findByStLgnm(userId);
	}

	/* (non-Javadoc)
	 * @see cn.com.wavenet.security.service.WavenetUserService#updateByUsercdUs(cn.com.wavenet.hydro.pojo.Users)
	 */
	@Override
	public Integer updateByUsercdUs(Users users) {
		// TODO Auto-generated method stub
		return usersDao.updateByUsercdUs(users);
	}
	
	/*public List<UserDeptBean> findByUserDept(){
		EntityManager em = emf.createEntityManager();
		StringBuilder sb = new StringBuilder()
		.append("select dt.cd_dp,dt.cd_pdp,dt.st_nm from wt_sys_dept dt where 1=1 ")
		.append("union ")
		.append("select '#'||t.cd_us,t.cd_dp,t.st_nm from WT_SYS_USER t where 1=1 and t.st_Status='1' ");
		List<UserDeptBean> wsrl =em.createNativeQuery(sb.toString(), UserDeptBean.class).getResultList();
		em.close();
		return wsrl;
	}*/
	
	/*public List<UserDeptBean> findByUserDeptPanel(){
		EntityManager em = emf.createEntityManager();
		StringBuilder sb = new StringBuilder()
		.append("select dt.cd_dp,dt.cd_pdp,dt.st_nm from wt_sys_dept dt where 1=1 ")
		.append("union ")
		.append("select '#'||t.cd_us,t.cd_dp,t.st_nm from WT_SYS_USER t where 1=1 and t.st_Status='1' ");
		List<UserDeptBean> wsrl =em.createNativeQuery(sb.toString(), UserDeptBean.class).getResultList();
		em.close();
		return wsrl;
	}*/

	/*@Override
	public List<WtSysArea> findAreaList() {
		return wtSysAreaRepository.findAll();
	}*/

}
