package doit.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import doit.dto.AttDto;
import doit.dto.TeacherDto;
import doit.dto.UserDto;
import doit.dto.UserLectureDto;
import doit.mapper.ManageMapper;


@Service
public class ManageServiceImpl implements ManageService {
	
	@Autowired
	ManageMapper manageMapper;
	
	@Override
	public List<UserDto> listUser() throws Exception {
		return manageMapper.listUser();
	}

	@Override
	public List<TeacherDto> listTeacher() throws Exception {
		return manageMapper.listTeacher();
	}

	@Override
	public List<AttDto> listAtt() throws Exception {
		return manageMapper.listAtt();
	}

	@Override
	public UserLectureDto selectAttInfo(String userId) throws Exception {
		return manageMapper.selectAttInfo(userId);
	}

	@Override
	public List<String> selectAttHistory(String userId) throws Exception {
		return manageMapper.selectAttHistory(userId);
	}

	@Override
	public int insertAtt(AttDto attDto) throws Exception {
		return manageMapper.insertAtt(attDto);
	}
	
	

}
