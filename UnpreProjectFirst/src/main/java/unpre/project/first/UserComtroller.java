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

	@RequestMapping(value = "/login")
	public String login() {
		return "main/login";
	}

	@RequestMapping(value = "/userlogin.do", method = RequestMethod.POST)
	public ModelAndView logincheck(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		Map<String, Object> userinfo = this.userservice.check(map);
		List<Map<String, Object>> mylist = this.userservice.myList(map);
		ModelAndView mav = new ModelAndView();

		
		HttpSession session = request.getSession();
		if (userinfo != null) {
			session.setAttribute("signIn", userinfo);
			session.setAttribute("myboarddata", mylist);
//	    	System.out.println(session.getAttribute("signIn"));

			mav.setViewName("redirect:/main");
		} else {
			session.setAttribute("signIn", null);
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

		boolean isUpdateSuccess = this.userservice.edit(map);
		Map<String, Object> userinfo = this.userservice.check(map);
		List<Map<String, Object>> mylist = this.userservice.myList(map);
		if (isUpdateSuccess) {
			HttpSession beforeSession = request.getSession();
			beforeSession.invalidate();
			HttpSession afterSession = request.getSession();
			afterSession.setAttribute("signIn", userinfo);
			afterSession.setAttribute("myboarddata", mylist);
			mav.setViewName("redirect:/mypage");
		}
		return mav;
	}

	@RequestMapping(value = "/mypagelist", method = RequestMethod.GET)
	public ModelAndView mypagelist() {
		return new ModelAndView("main/mypagelist");
	}
	

}
