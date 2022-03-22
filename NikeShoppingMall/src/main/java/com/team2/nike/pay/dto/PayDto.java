package com.team2.nike.pay.dto;

import java.util.Date;

public class PayDto {
	//users의 DB (누가 주문하는지 담을 DB) - 가져온다.
	private String users_id;
	private String users_name; //구매이름
	private int users_phoneNum; //구매자 연락처
	private String users_addr; //구매자 주소
	private String users_email; //구매자 이메일
	
	//product의 DB (내가 구매할 상품의 DB) - 가져온다.
	private int product_id; 
	private String product_name; //상품 이름
	private String product_imagePath; //상품 이미지 경로
	private int product_count; //상품 갯수
	private int product_price; //상품 가격
	private int product_point; //상품 포인트
	
	//Order의 DB (주문할 상품을 담을 DB) - 가져온걸 새로만들어 담는다.
	private int order_id;
	private int order_detail; //주문 정보
	private Date productDetail_orderDate; //주문날짜
	private int total_price; //종 주문금액 (최종금액)
	
	public PayDto() {}

	public PayDto(String users_id, String users_name, int users_phoneNum, String users_addr, String users_email,
			int product_id, String product_name, String product_imagePath, int product_count, int product_price,
			int product_point, int order_id, int order_detail, Date productDetail_orderDate, int total_price) {
		super();
		this.users_id = users_id;
		this.users_name = users_name;
		this.users_phoneNum = users_phoneNum;
		this.users_addr = users_addr;
		this.users_email = users_email;
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_imagePath = product_imagePath;
		this.product_count = product_count;
		this.product_price = product_price;
		this.product_point = product_point;
		this.order_id = order_id;
		this.order_detail = order_detail;
		this.productDetail_orderDate = productDetail_orderDate;
		this.total_price = total_price;
	}

	public String getUsers_id() {
		return users_id;
	}

	public void setUsers_id(String users_id) {
		this.users_id = users_id;
	}

	public String getUsers_name() {
		return users_name;
	}

	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}

	public int getUsers_phoneNum() {
		return users_phoneNum;
	}

	public void setUsers_phoneNum(int users_phoneNum) {
		this.users_phoneNum = users_phoneNum;
	}

	public String getUsers_addr() {
		return users_addr;
	}

	public void setUsers_addr(String users_addr) {
		this.users_addr = users_addr;
	}

	public String getUsers_email() {
		return users_email;
	}

	public void setUsers_email(String users_email) {
		this.users_email = users_email;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_imagePath() {
		return product_imagePath;
	}

	public void setProduct_imagePath(String product_imagePath) {
		this.product_imagePath = product_imagePath;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public int getProduct_point() {
		return product_point;
	}

	public void setProduct_point(int product_point) {
		this.product_point = product_point;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getOrder_detail() {
		return order_detail;
	}

	public void setOrder_detail(int order_detail) {
		this.order_detail = order_detail;
	}

	public Date getProductDetail_orderDate() {
		return productDetail_orderDate;
	}

	public void setProductDetail_orderDate(Date productDetail_orderDate) {
		this.productDetail_orderDate = productDetail_orderDate;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
}