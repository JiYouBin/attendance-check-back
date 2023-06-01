package doit.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import doit.dto.LoginDto;
import doit.dto.UserDto;

public interface LoginService extends UserDetailsService {
	public UserDto login(LoginDto loginDto) throws Exception;
	public int registUser(UserDto userDto) throws Exception;
}
