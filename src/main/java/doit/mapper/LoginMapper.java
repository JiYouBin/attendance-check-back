package doit.mapper;

import org.apache.ibatis.annotations.Mapper;

import doit.dto.LoginDto;
import doit.dto.UserDto;

@Mapper
public interface LoginMapper {
	public UserDto login(LoginDto loginDto) throws Exception;
	public int registUser(UserDto userDto) throws Exception;
	public UserDto selectUserByUserId(String userId);	
}
