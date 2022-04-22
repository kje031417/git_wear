package item.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import item.bean.ItemDTO;

@Repository
public class ItemDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 상품 목록
	public List<ItemDTO> itemList() {
		return sqlSession.selectList("mybatis.itemMapper.itemList");
	}
	
	// 상품 상세보기
	public ItemDTO itemView() {
		return sqlSession.selectOne("mybatis.itemMapper.itemView");
	}
}
