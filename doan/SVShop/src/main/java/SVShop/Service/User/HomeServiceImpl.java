package SVShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SVShop.Dao.CategorysDao;
import SVShop.Dao.MenuDao;
import SVShop.Dao.ProductsDao;
import SVShop.Dao.SlidesDao;
import SVShop.Dto.ProductsDto;
import SVShop.Entity.Categorys;
import SVShop.Entity.Menus;
import SVShop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categoryDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategory() {
		return categoryDao.GetDataCategorys();
	}
	public List<Menus> GetDataMenus() {
		return menuDao.GetDataMenus();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}
}
