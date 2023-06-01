package doit.service;

import java.util.Date;
import java.util.List;

import doit.dto.AttDto;
import doit.dto.TeacherDto;
import doit.dto.UserDto;
import doit.dto.UserLectureDto;

public interface ManageService {
	List<UserDto> listUser() throws Exception;
	List<TeacherDto> listTeacher() throws Exception;
	List<AttDto> listAtt() throws Exception;
	
	public int insertAtt(AttDto attDto) throws Exception;
	
	UserLectureDto selectAttInfo(String userId) throws Exception;
	List<String> selectAttHistory(String userId) throws Exception;
	
}
