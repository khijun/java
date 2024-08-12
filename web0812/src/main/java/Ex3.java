import mybatis.SqlMapConfig;
import shop.CartDAO;
import shop.CartProducts;

public class Ex3 {
	public static void main(String[] args) {
		CartDAO dao = new CartDAO();
		for(CartProducts dto : dao.viewCart()) {
			System.out.println(dto);
			System.out.println("1");
		}
		System.out.println("1");
		
		for(int i=0; i<100; i++) {
			SqlMapConfig.getSqlMapInstance().openSession(true);
			System.out.println(i);
		}
	}
}
