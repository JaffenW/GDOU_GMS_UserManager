package edu.gdou.gms.service;

import java.util.List;

import edu.gdou.gms.dao.NoticeMapper;
import edu.gdou.gms.entity.Notice;

public class NoticeServiceImpl implements NoticeService {
	private NoticeMapper  noticeMapper ;
	
	public void setNoticeMapper(NoticeMapper noticeMapper) {
		this.noticeMapper = noticeMapper;
	}
	
	@Override
	public List<Notice> queryAllNotice() {
		return noticeMapper.queryAllNotice(); 
	}
	
	@Override
	public Notice queryNotice(int noticeId) {
		return noticeMapper.queryNoticeById(noticeId);
	}
}
