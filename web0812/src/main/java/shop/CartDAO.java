package shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;

public class CartDAO {

	// SqlSessionFactory를 SqlMapConfig를 통하여 생성한다.
	SqlSessionFactory sqlsession_f = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	private static CartDAO cart = new CartDAO();
	private CartDAO() {
		// SqlSessionFactory에서 session을 할당받는다.
		// 이 때 openSession에 true를 주어야 자동 커밋이 된다.
		// default는 false이다.
		session = sqlsession_f.openSession(true);
	}
	public static CartDAO getCartDAO() {
		return cart;
	}

	public List<CartProducts> viewCart() {
		// session을 통해 쿼리를 실행하고 값을 받아온다.
		return session.selectList("CartMapper.viewCart");
	}

	public void addCart(int id) {
		session.insert("CartMapper.insertCart", id);			
	}
	
	public void increaseQuantity(int id) {
		session.update("CartMapper.increaseQuantity", id);
	}
	public void decreaseQuantity(int id) {
		session.update("CartMapper.decreaseQuantity", id);
	}

	public Cart getCartByPid(int pid) {
		return session.selectOne("CartMapper.selectCartByPId",pid);
	}



//	public void updateProduct(Product product) {
//		session.update("ProductMapper.updateProduct", product);
//	}

	public void deleteCartByPid(int pid) {
		session.delete("CartMapper.deleteCartByPid", pid);
	}
}
