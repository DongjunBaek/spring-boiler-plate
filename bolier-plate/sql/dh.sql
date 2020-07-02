--================================================
--관리자계정 system
--================================================
--dh 계정생성
 create user dh identified by dh
 default tablespace users;
 
 grant connect, resource to dh;
 
 --===============================================
 
create table member(
    member_id varchar2(30) not null,
    member_password varchar2(50) not null,
    member_email varchar2(50) not null,
    member_phone varchar2(13) not null,
    constraints pk_member_id PRIMARY key(member_id)
);

create table board(
    board_no number,
    board_writer varchar2(30) not null,
    board_title varchar2(200) not null,
    board_content varchar2(300),
    board_img_ori varchar2(300),
    board_img_re varchar2(300),
    board_date date default sysdate,
    board_level number,
    board_ref number,
    constraints pk_board_no primary key(board_no),
    constraints fk_board_writer foreign key(board_writer) references member(member_id)
                                        on delete cascade
); 

create table board_comment(
    comment_no number,
    board_no number,
    member_id varchar2(30),
    comment_content varchar2(300),
    comment_date date default sysdate,
    constraints pk_comment_no primary key(comment_no),
    constraints fk_comment_board_no foreign key(board_no) references board(board_no)
                                                on delete cascade,
    constraints fk_comment_member_id foreign key(member_id) references member(member_id)
                                                on delete cascade
);

create sequence seq_board_no;
create sequence seq_comment_no;

 