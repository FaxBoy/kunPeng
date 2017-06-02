package cn.com.wavenet.security.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.com.wavenet.hydro.pojo.Role;
import cn.com.wavenet.hydro.pojo.RoleUser;
import cn.com.wavenet.hydro.service.impl.ServiceSupportImpl;

/** 
 * @ClassName: WavenetUserServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 */
@Service
public class WavenetRoleServiceImpl extends ServiceSupportImpl<Role, String> implements WavenetRoleService {


	/*@Override
	public Page<WtSysRole> findRoleInfomation(final PageRequestVo vo) {
		return roleRepository.findAll(new Specification<WtSysRole>() {
			@Override
			public Predicate toPredicate(Root<WtSysRole> root, CriteriaQuery<?> query,
					CriteriaBuilder cb) {
				Predicate predicate = cb.conjunction();
				List<Expression<Boolean>> expression = predicate.getExpressions();
				if(StringUtils.isNotBlank(vo.getStr("stNm"))){
					Path<String>  stnm = root.get("stNm");
					expression.add(cb.and(cb.like(stnm, "%"+vo.getStr("stNm")+"%")));
				}
			
				Path<String>  stnm = root.get("stNm");
				String roleArr[] = {"湖泊游客角色","事件发现角色","事件立案角色","事件审理角色","事件处理角色","事件结案角色","管理员","巡查人员角色","湖泊管理系统访问角色"};
				expression.add(stnm.in(roleArr));

				return predicate;
			}
		}, buildPageRequest(vo.getNumber(),vo.getSize()));
	}*/
	
	/*private PageRequest buildPageRequest(int pageNumber, int pagzSize){
		List<Order> sorts = new LinkedList<Order>();
		sorts.add(new Order(Direction.ASC,"nmOd"));
		return new PageRequest(pageNumber, pagzSize,new Sort(sorts));
	}*/
	
	public List<Role> findAllRoles(){
		/*return roleRepository.findAll(new Specification<WtSysRole>() {
			
			@Override
			public Predicate toPredicate(Root<WtSysRole> root, CriteriaQuery<?> query,
					CriteriaBuilder cb) {
				Predicate predicate = cb.conjunction();
				List<Expression<Boolean>> expression = predicate.getExpressions();
				Path<String>  stnm = root.get("stNm");
				String roleArr[] = {"湖泊游客角色","事件发现角色","事件立案角色","事件审理角色","事件处理角色","事件结案角色","管理员","巡查人员角色","湖泊管理系统访问角色"};
				expression.add(stnm.in(roleArr));
				return predicate;
			}
		});*/
		return null;
	}
	
	public List<RoleUser> findByUserHasRole(final String usercode,final String rolecode){
		/*return roleUserRepository.findAll(new Specification<WtSysRoleuser>() {
			@Override
			public Predicate toPredicate(Root<WtSysRoleuser> root, CriteriaQuery<?> query,
					CriteriaBuilder cb) {
				Predicate predicate = cb.conjunction();
				List<Expression<Boolean>> expression = predicate.getExpressions();
				if(StringUtils.isNotBlank(usercode)){
					Path<String>  stLgnm = root.get("wtSysUser").get("stLgnm");
					expression.add(cb.and(cb.equal(stLgnm, usercode)));
				}
				if(StringUtils.isNotBlank(rolecode)){
					Path<String>  cdRl = root.get("wtSysRole").get("cdRl");
					expression.add(cb.and(cb.equal(cdRl, rolecode)));
				}
				return predicate;
			}
		});*/
		return null;
	}
	@Transactional
	public boolean saveRoleHasUser(List<RoleUser> rulist,String rolecode){
		/*boolean bool = true;
		try {
			roleUserRepository.delete(findByUserHasRole(null,rolecode));
			roleUserRepository.save(rulist);
		} catch (Exception e) {
			bool =false;
			e.printStackTrace();
		}
		return bool;*/
		return false;
	}

	@Override
	public List<RoleUser> getUserRole(String cdUs) {
		//return roleUserRepository.findBycdUs(cdUs);
		return null;
	}
}
