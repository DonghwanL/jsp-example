package model;

public class Brd {
	private int no;
	private String writer;
	private String subject;
	private String content;
	
	
	@Override
	public String toString() {
		return "Brd [no=" + no + ", writer=" + writer + ", subject=" + subject + ", content=" + content + "]";
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}