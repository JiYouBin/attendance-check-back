package doit.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import doit.dto.AttDto;
import doit.dto.TeacherDto;
import doit.dto.UserDto;
import doit.dto.UserLectureDto;

@Mapper
public interface ManageMapper {
	public List<UserDto> listUser() throws Exception;	
	public List<TeacherDto> listTeacher() throws Exception;
	public List<AttDto> listAtt() throws Exception;
	
	int insertAtt(AttDto attDto) throws Exception;
	
	UserLectureDto selectAttInfo(String userId) throws Exception;
	List<String> selectAttHistory(String userId) throws Exception;
	
}
