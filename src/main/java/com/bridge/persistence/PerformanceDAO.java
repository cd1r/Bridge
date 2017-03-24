package com.bridge.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bridge.domain.PerformanceVO;

@Repository
public class PerformanceDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bridge.mapper.PerformanceMapper";
	
	public void create(PerformanceVO vo) throws Exception
	{
		
	}
	public PerformanceVO readPerformance(int id) throws Exception
	{
		return null;
	}
	
	public List<PerformanceVO> readAllPerformance() throws Exception
	{
		return session.selectList(namespace + ".readAllPerformance");
	}
	
	public void update(int mid) throws Exception
	{
		
	}
	
}
