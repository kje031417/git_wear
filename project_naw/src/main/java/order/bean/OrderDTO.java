package order.bean;

public class OrderDTO {
	private String user_id; // 회원 id
	private String user_name; // 구매자 이름
	private int cart_seq; // 시퀀스
	private String item_code; // 상품 번호
	private String item_name; // 상품 이름
	private String item_color; // 색상
	private String item_size; // 사이즈
	private int item_price; // 상품 개별 금액
	private int cart_qty; // 상품 개수
	private int cart_totalprice; // total 금액
	private String user_post; // 우편번호
	private String user_addr1; // 주소
	private String user_addr2; // 상세주소
	private String ord_payment; // 결제 수단

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getCart_seq() {
		return cart_seq;
	}

	public void setCart_seq(int cart_seq) {
		this.cart_seq = cart_seq;
	}

	public String getItem_code() {
		return item_code;
	}

	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getItem_color() {
		return item_color;
	}

	public void setItem_color(String item_color) {
		this.item_color = item_color;
	}

	public String getItem_size() {
		return item_size;
	}

	public void setItem_size(String item_size) {
		this.item_size = item_size;
	}

	public int getItem_price() {
		return item_price;
	}

	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}

	public int getCart_qty() {
		return cart_qty;
	}

	public void setCart_qty(int cart_qty) {
		this.cart_qty = cart_qty;
	}

	public int getCart_totalprice() {
		return cart_totalprice;
	}

	public void setCart_totalprice(int cart_totalprice) {
		this.cart_totalprice = cart_totalprice;
	}

	public String getUser_post() {
		return user_post;
	}

	public void setUser_post(String user_post) {
		this.user_post = user_post;
	}

	public String getUser_addr1() {
		return user_addr1;
	}

	public void setUser_addr1(String user_addr1) {
		this.user_addr1 = user_addr1;
	}

	public String getUser_addr2() {
		return user_addr2;
	}

	public void setUser_addr2(String user_addr2) {
		this.user_addr2 = user_addr2;
	}

	public String getOrd_payment() {
		return ord_payment;
	}

	public void setOrd_payment(String ord_payment) {
		this.ord_payment = ord_payment;
	}

}
