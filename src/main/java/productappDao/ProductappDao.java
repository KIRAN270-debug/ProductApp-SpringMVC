package productappDao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import productappDto.ProductappDto;

public class ProductappDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("joker");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void saveProduct(ProductappDto dto) {
		entityTransaction.begin();
		entityManager.persist(dto);
		entityTransaction.commit();
	}

	public List<ProductappDto> getAllProduct() {
		Query query = entityManager.createQuery("SELECT p FROM ProductappDto p");
		List<ProductappDto> products = query.getResultList();
		return products;
	}

	public void removeProduct(int id) {

		ProductappDto dto = entityManager.find(ProductappDto.class, id);

		entityTransaction.begin();
		entityManager.remove(dto);
		entityTransaction.commit();
	}

	// Get product by ID from the database
	public ProductappDto getProductById(int id) {
		ProductappDto dto= entityManager.find(ProductappDto.class, id);
		return dto;
	}

	// Update product in the database
	public void updateProduct(ProductappDto product) {
		entityTransaction.begin();
		entityManager.merge(product);
		entityTransaction.commit();
	}

	public ProductappDto getProduct(int id) {
		ProductappDto dto = entityManager.find(ProductappDto.class, id);
		return dto;
	}
}
