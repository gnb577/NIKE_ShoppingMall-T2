package com.team2.nike.users.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.team2.nike.users.dto.UsersDto;

public interface UsersService {
	//회원 정보를 추가
	public void addUsers(UsersDto dto);
	public Map<String, Object> isExist(String users_id);
	public void login(UsersDto dto, HttpSession session);
	
	//회원 정보를 수정 해 주는 메소드 
	public void updateUsers(UsersDto dto);
	//회원 정보를 삭제 해 주는 메소드 
	public void deleteUsers(String users_id);
	//회원 한명의 정보를 인자로 전달한 ModelAndView 객체에 담아주는 메소드
	public void getUser(String users_id, ModelAndView mView);

}
