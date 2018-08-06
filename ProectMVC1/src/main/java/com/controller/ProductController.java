package com.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.model.ProductDAO;
import com.model.User;
import com.model.UserDAO;



@Controller
public class ProductController {
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView view = new ModelAndView("Home");
		return view;
	}
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView ln = new ModelAndView("Login");
		return ln;
	}
	@RequestMapping(value="/loginSuccess",method=RequestMethod.POST)
	public ModelAndView loginSuccess(@ModelAttribute("User1")User User) {
		ModelAndView ls = new ModelAndView("LoginSuccess");
		ls.addObject("Username",User.getuName());
		UserDAO us = new UserDAO();
		us.insertuser(User);
		return ls;
	}

	
	@RequestMapping(value="/product",method=RequestMethod.GET)
	public ModelAndView product() {
		ModelAndView pv = new ModelAndView("product");
		pv.addObject("Headername","Welcome to product page"); 
		return pv;
	}
	
	@RequestMapping(value="/success",method=RequestMethod.POST)
	public ModelAndView productsuccess(@ModelAttribute("Product1")Product Product) {
		ModelAndView mv = new ModelAndView("success");
		
		mv.addObject("Productname",Product.getpName());
		ProductDAO pd = new ProductDAO();
		pd.insertproduct(Product);
		return mv;
	}
	
	@RequestMapping(value="/Laptop",method=RequestMethod.GET)
	public ModelAndView laptop() {
		ModelAndView lp = new ModelAndView("Laptop"); 
		return lp;
	}
	
	@RequestMapping(value="/getproducts", method = RequestMethod.GET)
	public ModelAndView getProductList(Principal P) {
		
		ProductDAO pd = new ProductDAO();
		List<Product> al = pd.getProducts();
		ModelAndView mv = new ModelAndView("listproducts");
		mv.addObject("lp",al);
	//	mv.addObject("un",P.getName());
		return mv;		
	}
	
	@ResponseBody
	@RequestMapping(value="/getjsonproducts", method=RequestMethod.POST)
	public List<Product> getJsonProductList(){
		ProductDAO pd = new ProductDAO();
		List<Product> al = pd.getProducts();
		return al;
	}


}
