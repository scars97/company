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
	
	@RequestMapping(value="/sign_up", method= RequestMethod.GET)
	public ModelAndView signup() {
		return new ModelAndView("main/sign_up");
	}
	
	@RequestMapping(value = "/sign_up", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();

	    String userId = this.projectservice.create(map);
	    if(userId != null) {
	    	mav.setViewName("main/login");
	    }
	    return mav;
	}
	
	@RequestMapping(value="/login.do")
	public String login() {
		return "main/login";
	}
		
	@RequestMapping(value = "/userlogin.do", method = RequestMethod.POST)
	public ModelAndView logincheck(@RequestParam Map<String, Object> map, HttpServletRequest request) {
	    Map<String, Object> userinfo = this.projectservice.check(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", userinfo);
	   
	    HttpSession session = request.getSession();
	    if(userinfo != null) {
	    	session.setAttribute("signIn", userinfo);
	    	System.out.println(session.getAttribute("signIn"));
	    	
	    	mav.setViewName("main/main");
	    }else {
	    	session.setAttribute("signIn", null);
	    	mav.setViewName("redirect:/login.do");
	    }	    
	    return mav;
	}

	@RequestMapping(value="/logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/login.do";
	}
}
