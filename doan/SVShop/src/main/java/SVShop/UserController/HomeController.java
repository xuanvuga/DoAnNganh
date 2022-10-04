package SVShop.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import SVShop.Service.User.HomeServiceImpl;

@Controller
public class HomeController extends BaseController {
	@Autowired
	HomeServiceImpl HomeService;
	
	@RequestMapping(value={"/","/trang-chu"},method = RequestMethod.GET)
	public ModelAndView Index() {
		_mvShare.addObject("slides",_homeService.GetDataSlide());
		_mvShare.addObject("categorys",_homeService.GetDataCategory());
		_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	
	@RequestMapping(value="/san-pham")
	public ModelAndView Product() {
		ModelAndView mv = new ModelAndView("user/product");
		return mv;
	}

}
