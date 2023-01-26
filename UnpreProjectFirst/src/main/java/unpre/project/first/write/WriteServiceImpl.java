package unpre.project.first.write;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WriteServiceImpl implements WriteService{
	@Autowired
	WriteDao writeDao;
		
		
		@Override
		public String create(Map<String, Object> map) {
			int affectRowCount = this.writeDao.insert(map);
			if (affectRowCount == 1) {
				return map.get("b_title").toString();
			}
			return null;
			
		}
		
		@Override
		public Map<String, Object> detail(Map<String, Object> map){
		    return this.writeDao.selectDetail(map);
		}
		
		@Override  
		public boolean edit(Map<String, Object> map) {  
		int affectRowCount = this.writeDao.update(map);  
		return affectRowCount == 1;  

		}
		
		@Override  
		public boolean remove(Map<String, Object> map) {
		int affectRowCount = this.writeDao.delete(map);  
		return affectRowCount == 1;

		}
		
		@Override  
		public List<Map<String, Object>> list(Map<String, Object> map){  
		return this.writeDao.selectList(map);
		}
}



//수정과 동일하게 한개의 행이 제대로 영항받았는지만 검사하면 된다 
// return affectRowCount == 1;