package global.sesoc.seworld.dto;

public class c6_category {
	private int category_id;
	private String category_name;

	public c6_category() {
		super();
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	@Override
	public String toString() {
		return "c6_category [category_id=" + category_id + ", category_name=" + category_name + "]";
	}
}
