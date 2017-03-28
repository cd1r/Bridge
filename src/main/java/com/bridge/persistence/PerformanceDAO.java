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

	public List<PerformanceVO> readMainPerformance() throws Exception
	{
		return session.selectList(namespace + ".readMainPerformance");
	}

	public PerformanceVO readAPerformance(int id) throws Exception
	{
		return session.selectOne(namespace + ".readAPerformance", id);
	}
	
	public List<PerformanceVO> readAllPerformance() throws Exception
	{
		return session.selectList(namespace + ".readAllPerformance");
	}
	
	public void update(int mid) throws Exception
	{
		
	}
	
}
