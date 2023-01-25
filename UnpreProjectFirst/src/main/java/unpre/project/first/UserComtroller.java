package unpre.project.first;

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
	ProjectService projectservice;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signup() {
		return new ModelAndView("main/signup");
	}

	@RequestMapping(value = "/signup.do", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		String userId = this.projectservice.create(map);
		if (userId != null) {
			mav.setViewName("redirect:/login.do");
		}
		return mav;
	}

	@RequestMapping(value = "/login.do")
	public String login() {
		return "main/login";
	}

	@RequestMapping(value = "/userlogin.do", method = RequestMethod.POST)
	public ModelAndView logincheck(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		Map<String, Object> userinfo = this.projectservice.check(map);

		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession();
		if (userinfo != null) {
			session.setAttribute("signIn", userinfo);
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

//	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
//	public ModelAndView mypagedo(@RequestParam Map<String, Object> map) {
//		Map<String, Object> userinfo = this.projectservice.load(map);
//		ModelAndView mav = new ModelAndView();
//		if (userinfo != null) {
//			mav.addObject("userdata", userinfo);
//			mav.setViewName("redirect:/mypage");
//		}
//		return mav;
//	}

	@RequestMapping(value = "/mypagechange", method = RequestMethod.GET)
	public ModelAndView mypagechange() {
		return new ModelAndView("main/mypagechange");
	}

	@RequestMapping(value = "/mypageupdate.do", method = RequestMethod.POST)
	public ModelAndView mypageupdate(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		boolean isUpdateSuccess = this.projectservice.edit(map);
		if (isUpdateSuccess) {
			HttpSession session = request.getSession();
			session.invalidate();
			mav.setViewName("redirect:/login.do");
		}
		return mav;
	}

//	@RequestMapping(value = "/board.do")
//	public String board() {
//		return "main/board_write";
//	}
//
//	@RequestMapping(value = "/board_write.do", method = RequestMethod.POST)
//	public ModelAndView boardcreatePost(@RequestParam Map<String, Object> map) {
//		ModelAndView mav = new ModelAndView();
//		String btitle = this.projectservice.boardcreate(map);
//		System.out.println(btitle);
//		if (btitle != null) {
//			mav.setViewName("redirect:/login.do");
//		}
//		return mav;
//	}
}
