package unpre.project.first;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserDAO userdao;
	
	//회원가입 인터페이스 구현(오버라이드)
	@Override
	public String create(Map<String, Object> map) {
	    int affectRowCount = this.userdao.insert(map);
	    if (affectRowCount ==  1) {
	        return map.get("user_id").toString();
	    }
	    return null;
	}
	
	//로그인 인터페이스 구현(오버라이드)
	@Override
	public Map<String, Object> check(Map<String, Object> map){
	    return this.userdao.select(map);
	}
	
	//마이페이지 정보 + 게시글 닉네임 변경
	@Override
	public boolean edit(Map<String, Object> map) {
	    int userUpdateCount = this.userdao.userupdate(map);
	    int boardNciknameCount = this.userdao.updateBoardNickname(map);
	    if((userUpdateCount >= 1) && (boardNciknameCount >= 1)) {
	    	return true;
	    }
	    return false;
	}
	
	//내 게시글 목록
	@Override  
	public List<Map<String, Object>> myList(Map<String, Object> map){  
		return this.userdao.selectMyList(map);
	}
	
}
