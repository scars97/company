package unpre.project.first;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BarController {
	
	@RequestMapping(value="/bar", method= RequestMethod.GET)
	public ModelAndView bar() {
		return new ModelAndView("main/bar");
	}
	
}
