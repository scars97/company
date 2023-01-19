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
public class MainController {
	
	@RequestMapping(value="/bar", method= RequestMethod.GET)
	public ModelAndView bar() {
		return new ModelAndView("main/bar");
	}
	
	@RequestMapping(value="/bar2", method= RequestMethod.GET)
	public ModelAndView bar2() {
		return new ModelAndView("main/bar2");
	}
	
	@RequestMapping(value="/main", method= RequestMethod.GET)
	public ModelAndView main() {
		return new ModelAndView("main/main");
	}
	
	@RequestMapping(value="/mine", method= RequestMethod.GET)
	public ModelAndView main2() {
		return new ModelAndView("main/mine");
	}
	
	@RequestMapping(value="/repre_photo", method= RequestMethod.GET)
	public ModelAndView repre() {
		return new ModelAndView("main/repre_photo");
	}
	
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
	
	@RequestMapping(value="/login", method= RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("main/login");
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView logincheck(@RequestParam Map<String, Object> map, HttpServletRequest request) {
	    Map<String, Object> nickname = this.projectservice.check(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", nickname);
	   
	    HttpSession session = request.getSession();
	    if(nickname != null) {
	    	session.setAttribute("signIn", nickname);
	    	System.out.println(session.getId() + "," + session.getAttribute("signIn"));
	    	mav.setViewName("main/logindetail");
	    }else {
	    	session.setAttribute("signIn", null);
	    	mav.setViewName("redirect:/login");
	    }	    
	    return mav;
	}
	
	@RequestMapping(value="/logindetail", method= RequestMethod.GET)
	public ModelAndView logindetail() {
		return new ModelAndView("main/logindetail");
	}
	
	@RequestMapping(value="/logout", method= RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		System.out.println(session.getId() + "," + session.getAttribute("signIn"));
		return "redirect:/login";
	}
}
