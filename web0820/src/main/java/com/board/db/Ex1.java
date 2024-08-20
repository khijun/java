package com.board.db;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlMapConfig;

public class Ex1 {
	public static void main(String[] args) {
		SqlSession session = SqlMapConfig.getSqlMapInstance().openSession(true);
		BoardMapper bm = session.getMapper(BoardMapper.class);
		int c = bm.countBoard();
		System.out.println(c);
	}
}
