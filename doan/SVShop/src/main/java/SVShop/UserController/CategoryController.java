package SVShop.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import SVShop.Dto.PaginatesDto;
import SVShop.Service.User.CategoryServiceImpl;
import SVShop.Service.User.PaginateServiceImpl;

@Controller
public class CategoryController extends BaseController {
	
	@Autowired
	private CategoryServiceImpl categoryService;
	
	@Autowired
	private PaginateServiceImpl paginateService;
	
	private int totalProductsPage = 9;
	
	@RequestMapping(value = "/san-pham/{id}",method = RequestMethod.GET)
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.setViewName("user/products/category");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id), paginateInfo.getStart() , totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/san-pham/{id}/{currentPage}",method = RequestMethod.GET)
	public ModelAndView Product(@PathVariable String id , @PathVariable String currentPage) {
		_mvShare.setViewName("user/products/category");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage,Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id),paginateInfo.getStart() ,totalProductsPage));
		return _mvShare;
	}

}
