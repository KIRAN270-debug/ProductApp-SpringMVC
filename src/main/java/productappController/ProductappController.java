package productappController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import productappDao.ProductappDao;
import productappDto.ProductappDto;
import productappService.ProductAppService;

@Controller
public class ProductappController {
	@RequestMapping("/")
	public String index(Model model) {
		ProductAppService appService = new ProductAppService();
		List<ProductappDto> productList = appService.getAllProducts();
		model.addAttribute("product", productList);
		return "index";
	}

//---------------------------------------------------------------------------------------------
	@RequestMapping("/addproduct")
	public String addProduct() {
		return "addproduct";
	}

	@RequestMapping(value = "/addproducthandle",method = RequestMethod.POST)
	public String addProducthandle(@ModelAttribute ProductappDto dto, Model model) {
	    ProductAppService appService = new ProductAppService();
	    appService.saveProduct(dto);

	    model.addAttribute("message", "Product added successfully!");
	    return "addproduct"; // Name of the view (JSP page) to display the result
	}


	// ---------------------------------------------------------------------------------------------

	@RequestMapping("/displayallproduct")
	public String displayallproduct(Model model) {
		ProductAppService appService = new ProductAppService();
		List<ProductappDto> productList = appService.getAllProducts();
		model.addAttribute("product", productList);
		return "displayallproduct";
	}

	// ---------------------------------------------------------------------------------------------
	@RequestMapping("/enterid")
	public String displayProductForm() {
	    return "enterid"; // This shows the enterid.jsp page
	}



	@RequestMapping(value = "/enterid", method = RequestMethod.POST)
	public String displayProductHandle(@RequestParam("id") int id, Model model) {
		ProductAppService appService = new ProductAppService();
		ProductappDto product = appService.getProductById(id);
		model.addAttribute("product", product);
		return "displaysingleproduct"; // This shows the product details page (displaysingleproduct.jsp)
	}

	// ---------------------------------------------------------------------------------------------

	// 2. Show the form to enter product ID to update
	@RequestMapping("/updatebyid")
	public String showUpdateForm() {
		return "updateproductbyid"; // updateproductbyid.jsp (ID input form)
	}

	// 3. Find the product by ID and show the update form with existing values
	@RequestMapping(value = "/updateproductenterid", method = RequestMethod.POST)
	public String showProductForUpdate(@RequestParam("id") int id, Model model) {
		ProductAppService appService = new ProductAppService();
		ProductappDto product = appService.getProductById1(id);

		model.addAttribute("product", product);

		return "updateproduct"; // updateproduct.jsp (Edit form)

	}

	// 4. Update the product details
	@RequestMapping(value = "/updateproduct", method = RequestMethod.POST)
	public String updateProduct(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("price") long price, @RequestParam("description") String description, Model model) {
		ProductAppService appService = new ProductAppService();
		ProductappDto product = appService.getProductById1(id);
		System.out.println(product);
		product.setName(name);
		product.setPrice(price);
		product.setDescription(description);

		appService.updateProductById(product); // Update in DB

		// After update, redirect to home page
		return "redirect:/";

	}

	// ---------------------------------------------------------------------------------------------

	@RequestMapping("removebyid/{id}")
	public RedirectView deleteIcon(@PathVariable("id") int id, HttpServletRequest httpServletRequest) {
		ProductappDao dao = new ProductappDao();
		dao.removeProduct(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(httpServletRequest.getContextPath() + "/displayallproduct");
		return redirectView;
	}

	// ---------------------------------------------------------------------------------------------

	@RequestMapping("updateproduct/{id}")
	public String showUpdateForm(@PathVariable("id") int id, Model model) {
		ProductAppService appService = new ProductAppService();
		ProductappDto product = appService.getProductById1(id);
		model.addAttribute("product", product);
		return "updateproduct"; // This should match your JSP/HTML form name
	}

	@RequestMapping(value = "updateproduct/{id}", method = RequestMethod.POST)
	public String updateProducticon(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("price") long price, @RequestParam("description") String description, Model model) {
		ProductAppService appService = new ProductAppService();
		ProductappDto product = appService.getProductById1(id);
		System.out.println(product);
		product.setName(name);
		product.setPrice(price);
		product.setDescription(description);

		appService.updateProductById(product); // Update in DB

		// After update, redirect to home page
		return "redirect:/";

	}

	// ---------------------------------------------------------------------------------------------
	@RequestMapping("/deleteproductbyid")
	public String deleteproductbyid() {
		return "deleteproductbyid"; // This shows the enterid.jsp page
	}

	@RequestMapping(value = "/deleteproductbyid", method = RequestMethod.POST)
	public String deleteproductbyidHandle(@RequestParam("id") int id, Model model) {
		ProductAppService appService = new ProductAppService();
		appService.removeProductbyid(id);

		return "redirect:/";
	}

	// ---------------------------------------------------------------------------------------------

	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	// ---------------------------------------------------------------------------------------------
}