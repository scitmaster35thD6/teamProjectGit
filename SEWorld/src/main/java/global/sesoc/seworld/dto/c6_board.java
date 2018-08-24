package global.sesoc.seworld.dto;

public class c6_board {
	
	private String board_id;
	private String member_id;
	private String category;
	private String title;
	private String content;
	private String create_date;
	private String update_date;

	public c6_board() {
		super();
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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
		return "c6_board [board_id=" + board_id + ", member_id=" + member_id + ", category=" + category + ", title="
				+ title + ", content=" + content + ", create_date=" + create_date + ", update_date=" + update_date
				+ "]";
	}

}
