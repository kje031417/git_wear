package profile.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import profile.bean.ProfileDTO;


@Repository
public class ProfileDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// (회원가입) ID중복 확인 isExistId
	public boolean isExistId(String user_id) {
		return sqlSession.selectOne("mybatis.profileMapper.isExistId", user_id);
	}
	// (회원가입) 데이터 저장하기 joinProfile
	public int joinProfile(ProfileDTO dto) {
		return sqlSession.insert("mybatis.profileMapper.joinProfile", dto);
	}
	
	// (로그인) 로그인(ID&PW확인) signCheck
	public List<ProfileDTO> signCheck(String user_name, String user_pwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_name", user_name);
		map.put("user_pwd", user_pwd);
		return sqlSession.selectList("mybatis.profileMapper.signCheck", map);
	}
	
	// (로그인) 아이디 찾기 findId
	public List<ProfileDTO> findId(String user_name, String user_email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_name", user_name);
		map.put("user_email", user_email);
		return sqlSession.selectList("mybatis.profileMapper.findId", map);
	}
	
	// (로그인) 비밀번호 찾기 findPwd
	public List<ProfileDTO> findPwd(String user_id, String user_name, String user_email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("user_name", user_name);
		map.put("user_email", user_email);
		return sqlSession.selectList("mybatis.profileMapper.findPwd", map);
	}
	
	// (마이페이지) 회원정보수정 modifyProfile
	public int modify(ProfileDTO dto) {
		return sqlSession.update("mybatis.profileMapper.findId", dto);
	}
	
	// (마이페이지) 회원탈퇴 withdrawalProfile
	public int withdrawalProfile(String id) {
		return sqlSession.delete("mybatis.profileMapper.withdrawalProfile", id);
	}
}
