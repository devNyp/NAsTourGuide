package com.nas.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface FvService {

	<T> List<T> getAll(String numOfRows, String location);

	<T> List<T> getOne1(String contentid, String contentTypeId);
	
	<T> List<T> getOne2(String contentid, String contentTypeId);

}
