package edu.gdou.gms.service;

import java.util.List;

import edu.gdou.gms.entity.Notice;

public interface NoticeService {

	public List<Notice> queryAllNotice();//查询所有公告
	
	public Notice queryNotice(int noticeId);//查询公告	
		
}
