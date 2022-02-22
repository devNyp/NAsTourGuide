package com.nas.service;

import java.util.List;

import org.springframework.stereotype.Service;

import apiTest.test.GetApi;
import apiTest.test.GetApi.SvcName;
import apiTest.vo.DetailCommonRequest;
import apiTest.vo.DetailCommonResponse;
import apiTest.vo.DetailIntroRequest;
import apiTest.vo.DetailIntroResponse;
import apiTest.vo.SearchFestivalRequest;
import apiTest.vo.SearchFestivalResponse;

@Service
public class FvServiceImpl implements FvService{

	@Override
	public <T> List<T> getAll(String numOfRows, String location) {
//		System.out.println(numOfRows +" / "+ location );
		SvcName svcName = SvcName.SFV; 
		
		SearchFestivalRequest requestParam = (SearchFestivalRequest) svcName.requestObj();
		SearchFestivalResponse responseParam = (SearchFestivalResponse) svcName.responseObj();
		
		requestParam.setNumOfRows(numOfRows) ;
		requestParam.setPageNo("1");
		requestParam.setArrange("D");
		if(!location.equals("0")) {
			requestParam.setAreaCode(location);	
		}
		
		
		return GetApi.playApi(requestParam, responseParam, svcName);
	}

	@Override
	public <T> List<T> getOne1(String contentid, String contentTypeId) {
		SvcName svcName = SvcName.DTC;
		
		DetailCommonRequest requestParam = (DetailCommonRequest) svcName.requestObj();
		DetailCommonResponse responseParam = (DetailCommonResponse) svcName.responseObj();
		
		requestParam.setContentId(contentid);	
		requestParam.setContentTypeId(contentTypeId);
		requestParam.setDefaultYN("Y");
		requestParam.setFirstImageYN("Y");
		requestParam.setMapinfoYN("Y");
		requestParam.setAddrinfoYN("Y");
		requestParam.setOverviewYN("Y");
		requestParam.setAreacodeYN("Y");
		return GetApi.playApi(requestParam, responseParam, svcName);
	}

	@Override
	public <T> List<T> getOne2(String contentid, String contentTypeId) {
SvcName svcName = SvcName.DTL;
		
		DetailIntroRequest requestParam = (DetailIntroRequest) svcName.requestObj();
		DetailIntroResponse responseParam = (DetailIntroResponse) svcName.responseObj();
		
		requestParam.setContentId(contentid);	
		requestParam.setContentTypeId(contentTypeId);
		
		return GetApi.playApi(requestParam, responseParam, svcName);
	}
	

}
