package global.sesoc.seworld.dto;

public class AskFile {
	private String askFileId;
	private String askId;
	private String ogFilename;
	private String svFilename;
	private int fileSize;
	private String createdDate;
	private String updatedDate;
	public AskFile() {
		super();
	}
	public AskFile(String askFileId, String askId, String ogFilename, String svFilename, int fileSize,
			String createdDate, String updatedDate) {
		super();
		this.askFileId = askFileId;
		this.askId = askId;
		this.ogFilename = ogFilename;
		this.svFilename = svFilename;
		this.fileSize = fileSize;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
	}
	public String getAskFileId() {
		return askFileId;
	}
	public void setAskFileId(String askFileId) {
		this.askFileId = askFileId;
	}
	public String getAskId() {
		return askId;
	}
	public void setAskId(String askId) {
		this.askId = askId;
	}
	public String getOgFilename() {
		return ogFilename;
	}
	public void setOgFilename(String ogFilename) {
		this.ogFilename = ogFilename;
	}
	public String getSvFilename() {
		return svFilename;
	}
	public void setSvFilename(String svFilename) {
		this.svFilename = svFilename;
	}
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}
	@Override
	public String toString() {
		return "AskFile [askFileId=" + askFileId + ", askId=" + askId + ", ogFilename=" + ogFilename + ", svFilename="
				+ svFilename + ", fileSize=" + fileSize + ", createdDate=" + createdDate + ", updatedDate="
				+ updatedDate + "]";
	}
}
