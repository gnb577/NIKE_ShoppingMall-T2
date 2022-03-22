package com.team2.nike.users.dao;

import java.util.List;

import com.team2.nike.users.dto.UsersDto;

public interface UsersDao {
	public boolean isExist(String users_id);
	//회원 가입
	public void insert(UsersDto dto);
	//회원 탈퇴
	public void delete(String users_id);
	//회원 정보 불러오기
	public UsersDto getUser(String users_id);
	//회원 정보 수정
	public void update(UsersDto dto);
}
