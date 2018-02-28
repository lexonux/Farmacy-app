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
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ismt.micropharma.model.Sales;
import com.ismt.micropharma.service.SalesService;

@Controller
public class SalesController {

	@Autowired
	private SalesService salesService;

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}

	@RequestMapping(value = "/sales_form", method = RequestMethod.GET)
	public String getStudentForm(@ModelAttribute Sales sales) {
		return "salesForm";
	}

	@RequestMapping(value = "/sales_save", method = RequestMethod.POST)
	public String saveSaleInfo(@ModelAttribute Sales sales) {
		if (sales != null) {
			salesService.saveSalesInfo(sales);
		}
		return "redirect:/sales_list";
	}

	@RequestMapping(value = "/sales_list", method = RequestMethod.GET)
	public String listSales(Model model) {
		model.addAttribute("sales", salesService.getAllSalesInfo());
		return "salesList";
	}

	@RequestMapping(value = "/sales_delete", method = RequestMethod.GET)
	public String deleteSalesInfo(@RequestParam int id) {
		salesService.deleteSalesInfo(id);
		return "redirect:/sales_list";
	}
	
	@RequestMapping(value = "/sales_edit", method = RequestMethod.GET)
	public String getSalesEditForm(Model model, @RequestParam int id) {
		model.addAttribute("sales", salesService.getSalesInfoById(id));
		return "salesEdit";
	}

	@RequestMapping(value = "/sales_update", method = RequestMethod.POST)
	public String updateSalesInfo(@ModelAttribute Sales sales) {

		if (sales != null) {
			salesService.saveSalesInfo(sales);
		}
		return "redirect:/sales_list";
	}
}
