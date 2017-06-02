package cn.com.wavenet.security.service;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.com.wavenet.hydro.dao.ResourceDao;
import cn.com.wavenet.hydro.dao.RoleResourceDao;
import cn.com.wavenet.hydro.pojo.Resources;
import cn.com.wavenet.hydro.pojo.RoleResource;

/** 
 * @ClassName: WavenetUserServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 */
@Service
public class WavenetResourceServiceImpl implements WavenetResourceService {

	@Resource
	RoleResourceDao roleResourceDao;
	@Resource
	ResourceDao resourceDao;
	//WtSysRoleResourceRepository roleResourceRepository = null;
	//@Resource
	//EntityManagerFactory emf;
	@Override
	/*public Page<WtSysResource> findResourceInfomation(final PageRequestVo vo) {
		return resourceRepository.findAll(new Specification<WtSysResource>() {
			@Override
			public Predicate toPredicate(Root<WtSysResource> root, CriteriaQuery<?> query,
					CriteriaBuilder cb) {
				Predicate predicate = cb.conjunction();
				List<Expression<Boolean>> expression = predicate.getExpressions();
				if(StringUtils.isNotBlank(vo.getStr("stNm"))){
					Path<String>  stnm = root.get("stNm");
					expression.add(cb.and(cb.like(stnm, "%"+vo.getStr("stNm")+"%")));
				}
				return predicate;
			}
		}, buildPageRequest(vo.getNumber(),vo.getSize()));
	}*/
	
	/*private PageRequest buildPageRequest(int pageNumber, int pagzSize){
		List<Order> sorts = new LinkedList<Order>();
		sorts.add(new Order(Direction.ASC,"nmOd"));
		return new PageRequest(pageNumber, pagzSize,new Sort(sorts));
	}*/
	
	public List<Resources> findAllResources(String id){
		return null;
	}
	public List<Resources> findResourceRootNodes(){
		return null;
	}
	
	@Override
	public List<RoleResource> findUserHasResourceAndRole(String usercode) {
		return roleResourceDao.findUserHasResourceAndRole(usercode);
	}
	@Override
	public List<Resources> getUserResourceByLgnm(String stLgnm) {
		
		return resourceDao.getUserResourceByLgnm(stLgnm);
	}
	@Override
	public List<Resources> findAllResource() {
		return resourceDao.findAllResource();
	}
	
	/*@Override
	public List<Resources> findAllWtSysResource() {
		return resourceRepository.findAll();
	}*/
	
	/*@Override
	public List<Resources> findUserHasResource(String username) {
		List<Resources> wrs =resourceDao.getUserResourceByLgnm(username);
		return wrs;
	}*/
	
	/*public List<Roleresource> findByRoleHasResource(final String rolecode){
		return roleResourceRepository.findAll(new Specification<Roleresource>() {
			public Predicate toPredicate(Root<WtSysRoleresource> root, CriteriaQuery<?> query,
					CriteriaBuilder cb) {
				Predicate predicate = cb.conjunction();
				List<Expression<Boolean>> expression = predicate.getExpressions();
				if(StringUtils.isNotBlank(rolecode)){
					Path<String>  cdRl = root.get("wtSysRole").get("cdRl");
					expression.add(cb.and(cb.equal(cdRl, rolecode)));
				}
				return predicate;
			}
		});
	}*/
	/*@Transactional
	public List<WtSysRoleresource> saveRoleHasResource(List<WtSysRoleresource> rhr,String rolecode){
		if(StringUtils.isNotBlank(rolecode)){
			roleResourceRepository.delete(findByRoleHasResource(rolecode));
			rhr=roleResourceRepository.save(rhr);
		}
		return rhr;
	}*/
}
