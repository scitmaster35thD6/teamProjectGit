package global.sesoc.seworld.dto;

public class c6_board_reply {
	
	private String board_reply_id;
	private String board_id;
	private String member_id;
	private String content;
	private String create_date;
	private String update_date;

	public c6_board_reply() {
		super();
	}

	public String getBoard_reply_id() {
		return board_reply_id;
	}

	public void setBoard_reply_id(String board_reply_id) {
		this.board_reply_id = board_reply_id;
	}

	public String getBoard_id() {
		return board_id;
	}

	public void setBoard_id(String board_id) {
		this.board_id = board_id;
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
		return "c6_board_reply [board_reply_id=" + board_reply_id + ", board_id=" + board_id + ", member_id="
				+ member_id + ", content=" + content + ", create_date=" + create_date + ", update_date=" + update_date
				+ "]";
	}

}
