package com.spring.controller;

import java.util.Arrays;

import com.spring.dto.PdsVO;

public class ModifyPdsCommand extends RegistPdsCommand {
	
	private int pno;
	private int[] deleteFile;

	@Override
	public PdsVO toPdsVO() {
		PdsVO pds = super.toPdsVO();
		pds.setPno(this.pno);
		return pds;
	}
	
	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public int[] getDeleteFile() {
		return deleteFile;
	}

	public void setDeleteFile(int[] deleteFile) {
		this.deleteFile = deleteFile;
	}

	

	@Override
	public String toString() {
		return "ModifyPdsCommand [pno=" + pno + ", deleteFile="
				+ Arrays.toString(deleteFile) + ", getTitle()=" + getTitle()
				+ ", getContent()=" + getContent() + ", getWriter()="
				+ getWriter() + ", getUploadFile()="
				+ Arrays.toString(getUploadFile()) + "]";
	}

	
	
	
	
}
