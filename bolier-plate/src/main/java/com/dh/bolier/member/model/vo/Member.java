package com.dh.bolier.member.model.vo;

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
public class Member {

	private String memberId;
	private String memberPassword;
	private String memberEmail;
	private String memberPhone;
	
}
