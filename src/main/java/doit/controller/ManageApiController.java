package doit.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import doit.dto.AttDto;
import doit.dto.UserDto;
import doit.dto.UserLectureDto;
import doit.security.JwtTokenUtil;
import doit.service.ManageService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@CrossOrigin(origins="*", allowedHeaders="*")
public class ManageApiController {
	
	@Autowired
	ManageService manageService;
	
	@Autowired
	JwtTokenUtil jwtTokenUtil;
	
	
	
	//학생 마이페이지 조회
	
	@GetMapping("/api/doit/mypage")
	public ResponseEntity<UserLectureDto> mypage(HttpServletRequest request) throws Exception {
		
		String jwtToken = null;
		String subject = null;
		String authorizationHeader = request.getHeader(HttpHeaders.AUTHORIZATION);
		if (authorizationHeader != null && authorizationHeader.startsWith("Bearer ")) {
			jwtToken = authorizationHeader.substring(7);
			subject = jwtTokenUtil.getSubjectFromToken(jwtToken);
		} 
		
		log.debug(">>>>>>>>>>>>>>>>" + subject);
		

		
//		List<UserDto> userDto = manageService.listUser();
//		List<TeacherDto> teacherDto = manageService.listTeacher();
//		List<AttDto> attDto = manageService.listAtt();
//		
//		
//		if (userDto == null) {
//			return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
//		} else {
//			return ResponseEntity.status(HttpStatus.OK).body(userDto);
//		}
		
		
		
		UserLectureDto dto = manageService.selectAttInfo(subject);
		
		List<String> list = manageService.selectAttHistory(subject);
		dto.setAttHistory(list);
		
		if (dto == null) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
		} else {
			return ResponseEntity.status(HttpStatus.OK).body(dto);
		}
	}
	
	
	@PostMapping("/api/doit/mypage")
	public ResponseEntity<Map<String, Object>> insertAtt(
			@RequestBody AttDto attDto, HttpServletRequest request) throws Exception {
		
		// 토큰에서 사용자 아이디를 가져와서 설정
		String jwtToken = null;
		String subject = null;
		String authorizationHeader = request.getHeader(HttpHeaders.AUTHORIZATION);
		if (authorizationHeader != null && authorizationHeader.startsWith("Bearer ")) {
			jwtToken = authorizationHeader.substring(7);
			subject = jwtTokenUtil.getSubjectFromToken(jwtToken);
		} 
		attDto.setUserId(subject);

		// 출석일자에서 "-"를 제거
		attDto.setAttDate(attDto.getAttDate().replaceAll("-", ""));
		
		
		int insertedCount = 0;
		try {
			insertedCount = manageService.insertAtt(attDto);
			if (insertedCount > 0) {
				Map<String, Object> result = new HashMap<>();
				result.put("message", "정상적으로 등록되었습니다.");
				result.put("count", insertedCount);
				return ResponseEntity.status(HttpStatus.OK).body(result);
			} else {
				Map<String, Object> result = new HashMap<>();
				result.put("message", "등록된 내용이 없습니다.");
				result.put("count", insertedCount);
				return ResponseEntity.status(HttpStatus.OK).body(result);
			}
		} catch (Exception e) {
			Map<String, Object> result = new HashMap<>();
			result.put("message", "하루에 한번만 출석체크가 가능합니다.");
			// 하루에 한번만 출석체크가 가능하게 db에서 프라이머리키로 잡음 
			result.put("count", insertedCount);
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(result);
		}
	}

		
	//관리자 페이지 조회
	
	@GetMapping("/api/doit/adminpage")
	public ResponseEntity<Map<String,Object>> adminpage() throws Exception {
		List<UserDto> userDto = manageService.listUser();
		List<AttDto> attDto = manageService.listAtt();
		Map<String, Object> map = new HashMap<>();
		map.put("listUser", userDto);
		map.put("listAtt", attDto);
		
		if (userDto == null) {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
		} else {
			return ResponseEntity.status(HttpStatus.OK).body(map);
		}
	}
}
