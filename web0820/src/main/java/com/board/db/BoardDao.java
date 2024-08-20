package com.board.db;

import java.sql.*;
import java.time.*;
import java.util.*;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlMapConfig;

public class BoardDao {

	SqlSession session;
	private static BoardDao dao = new BoardDao();
	
    private BoardDao() {
    	session = SqlMapConfig.getSqlMapInstance().openSession(true);
    }
    
    public static BoardDao getInstance() {
    	return dao;
    }
    
    public int countBoard2() {
    	BoardMapper bm = session.getMapper(BoardMapper.class);
    	return bm.countBoard();
    }
    
    // 현재 시간을 문자열 형태로 반환
    private String getCurrentTime() {
        return LocalDate.now() + " " +
               LocalTime.now().toString().substring(0, 8);
    }

    // 게시글 갯수 얻기
    public int getNumRecords() {
        return session.selectOne("boardMapper.getCount");
    }

    // 게시글 리스트 읽기
    public List<BoardDto> selectList(int start, int listSize) {
		Map<String, Integer> param = new HashMap<String, Integer>();
    	param.put("start", start);
    	param.put("listSize", listSize);
        return session.selectList("boardMapper.getList", param);
    }

    public BoardDto selectOne(int num) {
    	return session.selectOne("boardMapper.getOne", num);
    }
    
    public boolean insertOne(BoardDto dto) {
    	dto.setRegtime(getCurrentTime());
    	return session.insert("boardMapper.insert", dto) != 0?true:false;
    }

    // DTO에 담긴 내용으로 게시글 데이터 업데이트
    public boolean updateOne(BoardDto dto) {
    	return session.update("boardMapper.update", dto) != 0?true:false;
    }

    // 지정된 글 번호의 레코드 삭제
    public boolean deleteOne(int num) {
    	return session.update("boardMapper.delete", num) != 0?true:false;
    }
}