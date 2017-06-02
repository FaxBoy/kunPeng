package cn.com.wavenet.hydro.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TreeMap;

import cn.com.wavenet.hydro.pojo.Resources;

/** 
 * @ClassName: ResourceBuilder 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 */
public class ResourceBuilder {
	
	List<Object> rescources = new LinkedList<Object>();
	
	public List<Resources> createMenu(List<Resources> resList) {
		// 定义一个结合（准备放有父子节点结构的目录）;
		List<Resources> listAll = new ArrayList<Resources>();
		TreeMap<String, Resources> map = new TreeMap<String, Resources>();
		// 将得道的具有Id 和Pid 的集合对象放入hash表中。
		for (Resources res :resList) {
			if(null!=res){
				map.put(res.getCdRes(), res);
			}
		}
		// 迭代取出hash表的key
		Iterator<String> it = map.keySet().iterator();
		while (it.hasNext()) {
			// 取出key
			String sid = it.next();
			// 取出key所对应的value对象。并取出父ID的值。
			Resources res =  map.get(sid);
			String pid = res.getCdPres();
			if (null==pid || "0".equals(pid) || "root".equals(pid)) {
				listAll.add(res);
			} else {
				// 取出父节点对象
				Resources pRes = map.get(pid);
				// 将子节点添加到父节点上
				pRes.getChildren().add(res);
			}
		}
		return listAll;
	}
	public List<Resources> getMenu(List<Resources> list){
		int i = 0;
		for(Resources res : list){
			String pid =res.getCdPres();
			if("0".equals(pid)){
				rescources.add(new LinkedList<Resources>());  
			}else{
				rescources.get(i);
			}
			int sz =res.getChildren().size();
			if(sz>0){
				getMenu(res.getChildren());
			}
		}
		return null;
	}
}

