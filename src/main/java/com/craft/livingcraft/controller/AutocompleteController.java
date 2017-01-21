package com.craft.livingcraft.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.craft.livingcraft.model.Product;
import com.craft.livingcraft.services.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class AutocompleteController 
{
	@Autowired
	ProductService productService;

	@RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody
	String getTags(@RequestParam String productName) {

		return simulateSearchResult(productName);

	}

	private String simulateSearchResult(String productName) {

		List<Product> result = new ArrayList<Product>();
		List<Product> search=productService.getProductList();
		// iterate a list and filter by tagName
		Gson gson=new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String data=null;
		for (Product product : search) {
			if (product.getProductName().contains(productName)) {
				result.add(product);
				data=gson.toJson(result);
			}
		}

		return data;
	}

}
