package productappService;

import java.util.List;

import productappDao.ProductappDao;
import productappDto.ProductappDto;

public class ProductAppService {
	public void saveProduct(ProductappDto dto) {
		ProductappDao dao = new ProductappDao();
		dao.saveProduct(dto);
	}

	public List<ProductappDto> getAllProducts() {
		ProductappDao dao = new ProductappDao();
		List<ProductappDto> x=dao.getAllProduct();
		return x;
	}

	public ProductappDto getProductById(int id) {
		ProductappDao dao = new ProductappDao();
		return dao.getProduct(id);
	}

	// Get product by ID 
	public ProductappDto getProductById1(int id) {
		ProductappDao dao = new ProductappDao();
		return dao.getProductById(id);
	}

	// Update product in the database
	public void updateProductById(ProductappDto product) {
		ProductappDao dao = new ProductappDao();
		dao.updateProduct(product);
	}

	public void removeProductbyid(int id)
	{
		ProductappDao dao = new ProductappDao();
		dao.removeProduct(id);
	}
}
