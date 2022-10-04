package SVShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import SVShop.Dto.ProductsDto;
@Service
public interface ICategoryService {
		
	public List<ProductsDto> GetAllProductsByID(int id);
	
}
