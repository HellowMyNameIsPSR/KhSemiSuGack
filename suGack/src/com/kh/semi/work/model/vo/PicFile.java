package com.kh.semi.work.model.vo;

public class PicFile {
	private int fileCode;
	private String originName;
	private String changeName;
	private String filePath;
	private String fileType;
	private int applyCode;
	private int bno;
	
	public PicFile() {}

	public PicFile(int fileCode, String originName, String changeName, String filePath, String fileType, int applyCode,
			int bno) {
		super();
		this.fileCode = fileCode;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.fileType = fileType;
		this.applyCode = applyCode;
		this.bno = bno;
	}

	public int getFileCode() {
		return fileCode;
	}

	public String getOriginName() {
		return originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public String getFileType() {
		return fileType;
	}

	public int getApplyCode() {
		return applyCode;
	}

	public int getBno() {
		return bno;
	}

	public void setFileCode(int fileCode) {
		this.fileCode = fileCode;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public void setApplyCode(int applyCode) {
		this.applyCode = applyCode;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	@Override
	public String toString() {
		return "picFile [fileCode=" + fileCode + ", originName=" + originName + ", changeName=" + changeName
				+ ", filePath=" + filePath + ", fileType=" + fileType + ", applyCode=" + applyCode + ", bno=" + bno
				+ "]";
	};
	
	
}
