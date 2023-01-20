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
	
}
