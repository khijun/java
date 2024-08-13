package webhard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlMapConfig;

public class webhardDAO {
	private static webhardDAO dao = new webhardDAO();
	private SqlSession session;
	private webhardDAO(){
		session = SqlMapConfig.getSqlMapInstance().openSession(false);
	}
	
	public static webhardDAO getDAO() {
		return dao;
	}
	
	public webhardDTO getWebhardByNum(int num) {
		return session.selectOne("webhardMapper.selectByNum", num);
	}
	
	public void insertWebhard(webhardDTO dto) {
		session.insert("webhardMapper.insertWebhard", dto);
	}
	
	public void deleteWebhard(int num) {
		session.delete("webhardMapper.deleteWebhard", num);
	}
	
	public List<webhardDTO> getList(){
		return session.selectList("webhardMapper.selectAll");
	}
}
