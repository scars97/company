package unpre.project.first.write;

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

import unpre.project.first.UserService;

@Controller
public class WriteController {
	@Autowired
	WriteService writeService;
	UserService userservice;

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public ModelAndView write() {
		return new ModelAndView("main/write");

	}

	// 게시글 등록 컨트롤러
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		String bNum = this.writeService.create(map);
		if (bNum != null) {
			mav.setViewName("redirect:/list");
		} 
		return mav;
	}

	// 게시글 상세 컨트롤러
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.writeService.detail(map);
		{

		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);

		String bNum = map.get("bNum").toString();

		mav.addObject("bNum", bNum); // 파라미터 넘겨주는?
		mav.setViewName("/alcohol/write/detail"); // jsp 경로

		return mav;
		}
	}

	// 수정 페이지?
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView update(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.writeService.detail(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		mav.setViewName("/alcohol/write/update");
		return mav;
	}

	// 게시글 수정 컨트롤러
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView updatePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		boolean isUpdateSuccess = this.writeService.edit(map);
		if (isUpdateSuccess) {
			String bNum = map.get("bNum").toString();
			mav.setViewName("redirect:/detail?bNum=" + bNum);
		} else {
			mav = this.update(map);
		}

		return mav;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView deletePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		boolean isDeleteSuccess = this.writeService.remove(map); // 삭제가 성공했는지 확인한다.
		if (isDeleteSuccess) {
			mav.setViewName("redirect:/list"); // 삭제가 성공했으면 상세페이지가 없으므로 목록으로 리다이렉트.
		} else {
			String bNum = map.get("bNum").toString();
			mav.setViewName("redirect:/detail?bNum=" + bNum); // 삭제 실패시 다시 상세페이지로
		}

		return mav;
	}
	
	

	@RequestMapping(value = "/list") // 전체 목록
	public ModelAndView list(@RequestParam Map<String, Object> map) {

		List<Map<String, Object>> list = this.writeService.list(map);

		ModelAndView mav = new ModelAndView();

		mav.addObject("data", list);

		if (map.containsKey("keyword")) {
			mav.addObject("keyword", map.get("keyword"));
		}

		mav.setViewName("main/list");
		return mav;
	}

	@RequestMapping(value = "/list_wine") // 와인 목록
	public ModelAndView listwine(@RequestParam Map<String, Object> map) {

		List<Map<String, Object>> listwine = this.writeService.list(map);

		ModelAndView mav = new ModelAndView();

		mav.addObject("data", listwine);

		if (map.containsKey("keyword")) {
			mav.addObject("keyword", map.get("keyword"));
		}

		mav.setViewName("alcohol/write/list_wine");
		return mav;
	}

	@RequestMapping(value = "/list_beer") // 맥주 목록
	public ModelAndView listbeer(@RequestParam Map<String, Object> map) {

		List<Map<String, Object>> listbeer = this.writeService.list(map);

		ModelAndView mav = new ModelAndView();

		mav.addObject("data", listbeer);

		if (map.containsKey("keyword")) {
			mav.addObject("keyword", map.get("keyword"));
		}

		mav.setViewName("alcohol/write/list_beer");
		return mav;
	}

	@RequestMapping(value = "/list_whisky") // 위스키 목록
	public ModelAndView listwhisky(@RequestParam Map<String, Object> map) {

		List<Map<String, Object>> listwhisky = this.writeService.list(map);

		ModelAndView mav = new ModelAndView();

		mav.addObject("data", listwhisky);

		if (map.containsKey("keyword")) {
			mav.addObject("keyword", map.get("keyword"));
		}

		mav.setViewName("alcohol/write/list_whisky");
		return mav;
	}
}
