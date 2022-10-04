package SVShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SVShop.Dto.ProductsDto;
import SVShop.Entity.Categorys;
import SVShop.Entity.Menus;
import SVShop.Entity.Slides;
@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategory();
	public List<Menus> GetDataMenus();
	public List<ProductsDto> GetDataProducts();
}
