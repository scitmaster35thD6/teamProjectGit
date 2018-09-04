package global.sesoc.seworld.dto;

import org.springframework.web.multipart.MultipartFile;

public class CKEditorAttachement {
	
	private String attachPath;

	private String Filename;

	private MultipartFile upload;

	private String CKEditorFuncNum;

	public CKEditorAttachement() {
		super();
	}

	public String getAttachPath() {
		return attachPath;
	}

	public void setAttachPath(String attachPath) {
		this.attachPath = attachPath;
	}

	public String getFilename() {
		return Filename;
	}

	public void setFilename(String filename) {
		Filename = filename;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}

	public String getCKEditorFuncNum() {
		return CKEditorFuncNum;
	}

	public void setCKEditorFuncNum(String cKEditorFuncNum) {
		CKEditorFuncNum = cKEditorFuncNum;
	}

	@Override
	public String toString() {
		return "CKEditorAttachement [attachPath=" + attachPath + ", Filename=" + Filename + ", upload=" + upload
				+ ", CKEditorFuncNum=" + CKEditorFuncNum + "]";
	}

}
