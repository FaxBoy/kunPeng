package cn.com.wavenet.hydro.databaseOpt.mapper.base;

import java.util.List;
import java.util.Map;
import org.springframework.transaction.annotation.Transactional;
@Transactional
public interface BasicMapper {
   public Map<String,Object> select(Map<String,Object> param);
   public List find(Map<String,Object> param);
   public void insert(Map<String,Object> param);
   public void update(Map<String,Object> param);
   public String F_GETLCZ(Map<String,Object> param);//调用得到堤防里程桩的函数
}
