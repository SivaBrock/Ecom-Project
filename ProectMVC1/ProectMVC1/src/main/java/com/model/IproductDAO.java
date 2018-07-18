package com.model;

import java.util.List;

public interface IproductDAO {
	boolean insertproduct(Product p);
	List<Product> getProducts();
	Product getProduct(int p);
	boolean updateProduct(Product p);
	boolean deleteProduct(Product p);


}
