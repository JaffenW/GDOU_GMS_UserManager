package edu.gdou.gms.dao;

import java.util.List;

import edu.gdou.gms.entity.Notice;

public interface NoticeMapper {
	
	public Notice queryNoticeById(int noticeId);//根据NoticeId查询用户
	
	public List<Notice> queryAllNotice();//查询所有的公告
}
