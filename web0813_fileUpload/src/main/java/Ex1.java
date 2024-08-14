import webhard.webhardDAO;

public class Ex1 {
	public static void main(String[] args) {
		webhardDAO dao = webhardDAO.getDAO();
		System.out.println(dao.getList());
	}
}
