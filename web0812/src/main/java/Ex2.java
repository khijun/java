import java.util.Optional;
import java.util.OptionalInt;

import shop.Product;
import shop.ProductDAO;

public class Ex2 {
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		Product product = dao.getProductById(1);
		System.out.println(product);
		String temp = null;
		int a = Optional.ofNullable(Integer.valueOf(temp)).orElse(0);
		System.out.println(a);
	}
}
