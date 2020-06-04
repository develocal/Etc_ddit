package com.spring.service.employee;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.CareerVO;

public interface CareerService {
	
	List<CareerVO> getCareerList(String id) throws SQLException;
	void regist(CareerVO career) throws SQLException;
	void modify(CareerVO career) throws SQLException;
	void remove(int cno, String id) throws SQLException;
}
