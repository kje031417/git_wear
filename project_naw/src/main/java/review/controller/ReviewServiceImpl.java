package review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import review.bean.ReviewDTO;
import review.dao.ReviewDAO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDAO dao;

	@Override
	public List<ReviewDTO> getReviewList(int startNum, int endNum, String item_code) {
		return dao.getReviewList(startNum, endNum, item_code);
	}

	@Override
	public int getTotalA(String item_code) {
		return dao.getTotalA(item_code);
	}

	@Override
	public int insertReview(ReviewDTO dto) {
		return dao.insertReview(dto);
	}

	@Override
	public int modifyReview(String review_content, int review_star, int review_code) {
		return dao.modifyReview(review_content, review_star, review_code);
	}

	@Override
	public int deleteREview(int review_code) {
		return dao.deleteReview(review_code);
	}

}
