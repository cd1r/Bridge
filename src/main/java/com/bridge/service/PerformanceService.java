package com.bridge.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bridge.domain.PerformanceVO;
import com.bridge.persistence.PerformanceDAO;

@Service
public class PerformanceService {

	@Inject
	private PerformanceDAO performanceDAO;
	
	public List<PerformanceVO> readMainPerformance() throws Exception {
		return performanceDAO.readMainPerformance();
	}
	
	public PerformanceVO readAPerformance(int id) throws Exception {
		return performanceDAO.readAPerformance(id);
	}
	
	public List<PerformanceVO> readAllPerformance() throws Exception {
		return performanceDAO.readAllPerformance();
	}
}
