package order.bean;

public class OrderDTO {
	private String ord_date; // 주문 날짜
	private String ord_time; // 주문 날짜
	private String ord_number; // 주문 날짜
	private String user_id; // 회원 id
	private String user_name; // 구매자 이름
	private int cart_seq; // 시퀀스
	private String ord_code; // 상품 번호
	private String ord_name; // 상품 이름
	private String ord_color; // 색상
	private String ord_size; // 사이즈
	private int ord_price; // 상품 개별 금액
	private int ord_qty; // 상품 개수
	private int ord_totalprice; // total 금액
	private String user_post; // 우편번호
	private String user_addr1; // 주소
	private String user_addr2; // 상세주소
	private String ord_payment; // 결제 수단

	public String getOrd_date() {
		return ord_date;
	}

	public void setOrd_date(String ord_date) {
		this.ord_date = ord_date;
	}

	public String getOrd_time() {
		return ord_time;
	}

	public void setOrd_time(String ord_time) {
		this.ord_time = ord_time;
	}

	public String getOrd_number() {
		return ord_number;
	}

	public void setOrd_number(String ord_number) {
		this.ord_number = ord_number;
	}

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

	public String getOrd_code() {
		return ord_code;
	}

	public void setOrd_code(String ord_code) {
		this.ord_code = ord_code;
	}

	public String getOrd_name() {
		return ord_name;
	}

	public void setOrd_name(String ord_name) {
		this.ord_name = ord_name;
	}

	public String getOrd_color() {
		return ord_color;
	}

	public void setOrd_color(String ord_color) {
		this.ord_color = ord_color;
	}

	public String getOrd_size() {
		return ord_size;
	}

	public void setOrd_size(String ord_size) {
		this.ord_size = ord_size;
	}

	public int getOrd_price() {
		return ord_price;
	}

	public void setOrd_price(int ord_price) {
		this.ord_price = ord_price;
	}

	public int getOrd_qty() {
		return ord_qty;
	}

	public void setOrd_qty(int ord_qty) {
		this.ord_qty = ord_qty;
	}

	public int getOrd_totalprice() {
		return ord_totalprice;
	}

	public void setOrd_totalprice(int ord_totalprice) {
		this.ord_totalprice = ord_totalprice;
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
