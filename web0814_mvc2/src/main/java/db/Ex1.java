package db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Ex1 {
	public static void main(String[] args) {
		BoardDao dao = new BoardDao();
		int c = dao.getNumRecords();
		System.out.println(c);
		//(pageNo - 1) * listSize, listSize
		int pageNo = 1;
		int listSize = 3;
		Map<String, Integer> param = new HashMap<String, Integer>();
    	param.put("start", (pageNo-1)*listSize);
    	param.put("listSize", listSize);
    	List<BoardDto> list = dao.selectList(param);
    	for(BoardDto dto : list) {
    		System.out.println(dto);
    	}
    	System.out.println(list);
	}
}
