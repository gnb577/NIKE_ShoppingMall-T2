package com.team2.nike.pay.dao;

import java.util.List;

import com.team2.nike.pay.dto.PayDto;

public interface PayDao {
	//���Ÿ� �ϱ� ���� ���� ���� ����Ʈ
	public List<PayDto> getList();
	//���� ������ �߰�
	public void insert(PayDto dto);
	//������ ��ǰ�ϳ��� ����
	public PayDto getData(int num);
}