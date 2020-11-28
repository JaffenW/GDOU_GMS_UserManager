package edu.gdou.gms.entity;

public class Notice {
	private int noticeId;
	private String title;
	private String publishDate;
	private String info;
	
	public Notice() {
		super();
	}
	
	public Notice(int noticeId, String title, String publishDate, String info) {
		super();
		this.noticeId = noticeId;
		this.title = title;
		this.publishDate = publishDate;
		this.info = info;
	}
	
	public int getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
}
