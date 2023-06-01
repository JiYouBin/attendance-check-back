package doit.dto;

import lombok.Data;

@Data
public class BoardDto {
	private int boardIdx;
	private String title;
	private String contents;
	private int hitCnt;
	private String createdDt;
	private String userId;
	private String updatedDt;
	private String updatedId;
	private int lectureIdx;
	private String boardImg;
}
