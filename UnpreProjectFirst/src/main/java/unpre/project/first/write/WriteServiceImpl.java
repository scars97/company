package unpre.project.first.write;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WriteServiceImpl implements WriteService{
	@Autowired
	WriteDao writeDao;
		
		//게시글 작성
		@Override
		public String create(Map<String, Object> map) {
			int affectRowCount = this.writeDao.insert(map);
			if (affectRowCount == 1) {
				return map.get("b_title").toString();
			}
			return null;
			
		}
		
		//게시글 상세
		@Override
		public Map<String, Object> detail(Map<String, Object> map){
		    return this.writeDao.selectDetail(map);
		}
		
		//게시글 수정
		@Override  
		public boolean edit(Map<String, Object> map) {  
		int affectRowCount = this.writeDao.update(map);  
		return affectRowCount == 1;  

		}
		
		//게시글 삭제
		@Override  
		public boolean remove(Map<String, Object> map) {
		int affectRowCount = this.writeDao.delete(map);  
		return affectRowCount == 1;

		}
		
		//게시글 목록
		@Override  
		public List<Map<String, Object>> list(Map<String, Object> map){  
		return this.writeDao.selectList(map);
		}
		
		//마이페이지 게시글 목록 추가
		@Override  
		public List<Map<String, Object>> updateMyBoardList(Map<String, Object> map){  
		return this.writeDao.updateMyBoard(map);
		}

}



//수정과 동일하게 한개의 행이 제대로 영항받았는지만 검사하면 된다 
// return affectRowCount == 1;