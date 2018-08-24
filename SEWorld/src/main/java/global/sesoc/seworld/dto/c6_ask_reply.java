package global.sesoc.seworld.dto;

public class c6_ask_reply {
	private String ask_reply_id;
	private String ask_id;
	private String member_id;
	private String content;
	private String create_date;
	private String update_date;

	public c6_ask_reply() {
		super();
	}

	public String getAsk_reply_id() {
		return ask_reply_id;
	}

	public void setAsk_reply_id(String ask_reply_id) {
		this.ask_reply_id = ask_reply_id;
	}

	public String getAsk_id() {
		return ask_id;
	}

	public void setAsk_id(String ask_id) {
		this.ask_id = ask_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public String getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}

	@Override
	public String toString() {
		return "c6_ask_reply [ask_reply_id=" + ask_reply_id + ", ask_id=" + ask_id + ", member_id=" + member_id
				+ ", content=" + content + ", create_date=" + create_date + ", update_date=" + update_date + "]";
	}

}
