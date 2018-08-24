package global.sesoc.seworld.dto;

public class c6_ask_file {
	
	private String ask_file_id;
	private String ask_id;
	private String og_filename;
	private String sv_filename;
	private int file_size;
	private String create_date;
	private String update_Date;

	public c6_ask_file() {
		super();
	}

	public String getAsk_file_id() {
		return ask_file_id;
	}

	public void setAsk_file_id(String ask_file_id) {
		this.ask_file_id = ask_file_id;
	}

	public String getAsk_id() {
		return ask_id;
	}

	public void setAsk_id(String ask_id) {
		this.ask_id = ask_id;
	}

	public String getOg_filename() {
		return og_filename;
	}

	public void setOg_filename(String og_filename) {
		this.og_filename = og_filename;
	}

	public String getSv_filename() {
		return sv_filename;
	}

	public void setSv_filename(String sv_filename) {
		this.sv_filename = sv_filename;
	}

	public int getFile_size() {
		return file_size;
	}

	public void setFile_size(int file_size) {
		this.file_size = file_size;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public String getUpdate_Date() {
		return update_Date;
	}

	public void setUpdate_Date(String update_Date) {
		this.update_Date = update_Date;
	}

	@Override
	public String toString() {
		return "c6_ask_file [ask_file_id=" + ask_file_id + ", ask_id=" + ask_id + ", og_filename=" + og_filename
				+ ", sv_filename=" + sv_filename + ", file_size=" + file_size + ", create_date=" + create_date
				+ ", update_Date=" + update_Date + "]";
	}

}
