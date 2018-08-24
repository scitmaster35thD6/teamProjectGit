package global.sesoc.seworld.dto;

public class c6_comment {
	
	private String member_id;
	private String exhibit_id;
	private double rating;
	private String content;
	private String create_date;
	private String update_date;

	public c6_comment() {
		super();
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getExhibit_id() {
		return exhibit_id;
	}

	public void setExhibit_id(String exhibit_id) {
		this.exhibit_id = exhibit_id;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
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
		return "c6_comment [member_id=" + member_id + ", exhibit_id=" + exhibit_id + ", rating=" + rating + ", content="
				+ content + ", create_date=" + create_date + ", update_date=" + update_date + "]";
	}

}
