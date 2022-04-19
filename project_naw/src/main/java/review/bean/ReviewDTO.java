package review.bean;

/* 리뷰 테이블 */
public class ReviewDTO {
	private int review_code;		//리뷰글 번호
	private String user_id;			//회원 id
	private String item_code;		//상품번호
	private String item_content;	//내용
	private int review_star;		//별점
	private String review_date;		//작성일
	
	// toString
	@Override
	public String toString() {
		String str = String.format("%d\t%s\t%s\t%s\t%d\t%s", review_code, user_id,
										item_code, item_content, review_star, review_date);
		return str;
	}
	
	// getter / setter
	public int getReview_code() {
		return review_code;
	}
	public void setReview_code(int review_code) {
		this.review_code = review_code;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	public String getItem_content() {
		return item_content;
	}
	public void setItem_content(String item_content) {
		this.item_content = item_content;
	}
	public int getReview_star() {
		return review_star;
	}
	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
}
