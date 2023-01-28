package unpre.project.first;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserComtroller {

	@Autowired
	UserService userservice;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signup() {
		return new ModelAndView("main/signup");
	}

	@RequestMapping(value = "/signup.do", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		String userId = this.userservice.create(map);
		if (userId != null) {
			mav.setViewName("redirect:/login.do");
		}
		return mav;
	}

	//로그인 화면 구현
	@RequestMapping(value = "/login")
	public String login() {
		return "main/login";
	}

	//로그인시 db에 있는 유저데이터 확인하고 데이터 가져옴
	@RequestMapping(value = "/userlogin.do", method = RequestMethod.POST)
	public ModelAndView logincheck(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		Map<String, Object> userinfo = this.userservice.check(map); //입력된 유저데이터 가져옴
		List<Map<String, Object>> mylist = this.userservice.myList(map);
		ModelAndView mav = new ModelAndView();

		
		HttpSession session = request.getSession();//로그인 유지에 필요한 세션 설정
		if (userinfo != null) { //유저 데이터가 db에 있을시
			session.setAttribute("signIn", userinfo);//가져온 유저데이터를 세션에 설정
			session.setAttribute("myboarddata", mylist);
	    	
	    	
			mav.setViewName("redirect:/main");//위에 로직들을 다 실행하고 로그인되면 메인으로 넘어감
		} else {
			session.setAttribute("signIn", null);//맞는 유저데이터가 없으면 다시 로그인 화면으로.
			mav.setViewName("redirect:/login.do");
		}
		return mav;
	}

	@RequestMapping(value = "/logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();

		return "redirect:/main";
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public ModelAndView mypage() {
		return new ModelAndView("main/mypage");
	}

	@RequestMapping(value = "/mypagechange", method = RequestMethod.GET)
	public ModelAndView mypagechange() {
		return new ModelAndView("main/mypagechange");
	}
	
	@RequestMapping(value = "/mypageupdate.do", method = RequestMethod.POST)
	public ModelAndView mypageupdate(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		boolean isUpdateSuccess = this.userservice.edit(map); //정보,게시글 닉네임 업데이트
		Map<String, Object> updateUserInfo = this.userservice.check(map);//유저정보 불러오기
		List<Map<String, Object>> updateBoardNickname = this.userservice.myList(map); //내 게시글 불러오기
		HttpSession session = request.getSession();//세션 불러오기
		if (isUpdateSuccess) { //정보 업데이트 성공하고
			session.setAttribute("signIn", updateUserInfo);//변경된 유저정보 세션		
			session.setAttribute("myboarddata", updateBoardNickname);// 닉네임 변경된 게시글 세션 
			System.out.println("변경된거임");
			}
			
			mav.setViewName("redirect:/mypage");//마이페이지로 넘어가기
		
		return mav;
	}

	@RequestMapping(value = "/mypageboard", method = RequestMethod.GET)
	public ModelAndView mypageboard(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		if (map.containsKey("keyword")) {
			mav.addObject("keyword", map.get("keyword"));
		}
		mav.setViewName("main/mypageboard");
		
		return mav;
	}

}
