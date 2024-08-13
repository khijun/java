import java.util.List;

import webhard.webhardDAO;
import webhard.webhardDTO;

public class Ex1 {
	public static void main(String[] args) {
		webhardDAO dao = webhardDAO.getDAO();
		List<webhardDTO> list = dao.getList();
		for(webhardDTO dto : list) {
			dto.toString();
		}
		System.out.println("end");
	}
}
