package com.dh.boiler.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dh.boiler.model.serivce.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@GetMapping("board/list.do")
	public String BoardList() {
		log.debug("list.do 테스트");
		return "board/boardList";
	};
	
	
}
