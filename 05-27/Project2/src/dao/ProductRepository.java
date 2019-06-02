package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();

	public ProductRepository() {
		Product DynamicWebSite = new Product("P100001", "㈜SI Cop.", 800000);
		DynamicWebSite.setDescription("간단한 반응형 웹 사이트 제작하실 개발자 구합니다.");
		DynamicWebSite.setCategory("IT");
		DynamicWebSite.setManufacturer("SI");
		DynamicWebSite.setUnitsInStock(2);
		DynamicWebSite.setCondition("New");
		
		Product QQ = new Product("P200001", "QQ.", 2500000);
		QQ.setDescription("QQ와 함께하실 디자이너를 모십니다.");
		QQ.setCategory("Design");
		QQ.setManufacturer("QQ");
		QQ.setUnitsInStock(1);
		QQ.setCondition("New");
		
		Product ABX = new Product("P400001", "ABX 마케팅", 2500000);
		ABX.setDescription("ABX마케팅에서 함께하실 분을 모집합니다.");
		ABX.setCategory("Marketing");
		ABX.setManufacturer("ABX");
		ABX.setUnitsInStock(1);
		ABX.setCondition("New");

		Product notebook = new Product("P500001", "LG 일본어", 1500000);
		notebook.setDescription("한국어&일본어 번역하실 분 구합니다.");
		notebook.setCategory("Translating");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1);
		notebook.setCondition("Refurbished");

		Product tablet = new Product("P300001", "㈜한국영상정보산업", 900000);
		tablet.setDescription("유아 교육용 영상물 편집하실 분 구합니다.");
		tablet.setCategory("MultiMedia");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(10);
		tablet.setCondition("Old");

		listOfProducts.add(DynamicWebSite);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
}
