package com.gura.lug.reserve.service;

import javax.servlet.http.HttpServletRequest;

import com.gura.lug.reserve.dto.ReserveDto;

public interface ReserveService {
	
	public void getList(HttpServletRequest request, ReserveDto dto);
	public void insert(ReserveDto dto, HttpServletRequest reqeust);
	public void insert2(ReserveDto dto, HttpServletRequest reqeust);
	public void delete(int num, HttpServletRequest request);
	public void update(ReserveDto dto, HttpServletRequest request);
	public void update2(ReserveDto dto, HttpServletRequest request);
	public void getData(HttpServletRequest request);
}
