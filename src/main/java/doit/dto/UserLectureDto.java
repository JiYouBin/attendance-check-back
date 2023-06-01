package doit.dto;


import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class UserLectureDto {
	private String userName;
	private String lectureName;
	private String today;
	private int attCount;
	private int attPrice;
	
	private String created_at;	
	private List<String> attHistory;
}
