package com.dh.boiler.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class Board {
	
	private int boardNo;
	private String boardWriter;
	private String boardTitle;
	private String boardContent;
	private String boardImgOri;
	private String boardImgRe;
	private Date boardDate;
	private int boardLevel;
	private int boardRef;
	
	
}
