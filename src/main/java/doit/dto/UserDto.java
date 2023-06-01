package doit.dto;

import lombok.Data;

@Data
public class UserDto {
	private int    userIdx;
	private String userId;
	private String userPassword;
	private String userName;
	private String userEmail;
	private String userPhone;
	private int    userBirth;
	private int    lectureIdx;
}
