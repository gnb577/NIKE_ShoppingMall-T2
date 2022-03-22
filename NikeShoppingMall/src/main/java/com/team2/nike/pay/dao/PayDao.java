package com.team2.nike.pay.dao;

import java.util.List;

import com.team2.nike.pay.dto.PayDto;

public interface PayDao {
	//구매를 하기 위한 값을 읽을 리스트
	public List<PayDto> getList();
	//구매 정보를 추가
	public void insert(PayDto dto);
	//구매한 상품하나의 정보
	public PayDto getData(int num);
}