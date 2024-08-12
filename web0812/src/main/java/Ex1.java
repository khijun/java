import shop.Product;
import shop.ProductDAO;

public class Ex1 {
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		Product dto = new Product(1, "샤프", "최고의 샤프1", 12000, 5);
		dao.updateProduct(dto);
		System.out.println("수정완료");
	}
}
