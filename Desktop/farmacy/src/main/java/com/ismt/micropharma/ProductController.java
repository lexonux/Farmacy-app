package com.ismt.micropharma.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ismt.micropharma.model.Product;
import com.ismt.micropharma.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}

	@RequestMapping(value = "/product_form", method = RequestMethod.GET)
	public String getProductForm(@ModelAttribute Product product) {
		return "productForm";
	}

	@RequestMapping(value = "/product_save", method = RequestMethod.POST)
	public String saveProductInfo(@ModelAttribute Product product) {
		if (product != null) {
			productService.saveProductInfo(product);
		}
		return "redirect:/product_list";
	}

	@RequestMapping(value = "/product_list", method = RequestMethod.GET)
	public String listProduct(Model model) {
		model.addAttribute("products", productService.getAllProductInfo());
		return "productList";
	}

	@RequestMapping(value = "/product_delete", method = RequestMethod.GET)
	public String deleteProductInfo(@RequestParam int id) {
		productService.deleteProductInfo(id);
		return "redirect:/product_list";
	}

	@RequestMapping(value = "/product_edit", method = RequestMethod.GET)
	public String getProductEditForm(Model model, @RequestParam int id) {
		model.addAttribute("product", productService.getProductInfoById(id));
		return "productEdit";
	}

	@RequestMapping(value = "/product_update", method = RequestMethod.POST)
	public String updateUserInfo(@ModelAttribute Product product) {

		if (product != null) {
			productService.saveProductInfo(product);
		}
		return "redirect:/product_list";
	}

	@RequestMapping(value = "/product_expired", method = RequestMethod.GET)
	public String listExpiredProduct(Model model) {
		model.addAttribute("ExpiredProduct", productService.getAllProductInfo());
		return "expiredProduct";
	}

	@RequestMapping(value = "/product_search_form", method = RequestMethod.GET)
	public String getProductSearchForm() {
		return "searchProduct";
	}

	@RequestMapping(value = "/product_search", method = RequestMethod.POST)
	public String searchProduct(@RequestParam int batchNo, Model model) {
		model.addAttribute("product", productService.getProductInfoByBatchNo(batchNo));
		return "searchProduct";
	}
}
