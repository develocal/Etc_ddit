package com.jsp.action.pds;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.AttachVO;
import com.jsp.service.PdsService;

public class RemovePdsAction implements Action {

	private PdsService pdsService;
	public void setPdsService(PdsService pdsService) {
		this.pdsService = pdsService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "pds/removeSuccess";

		int pno = Integer.parseInt(request.getParameter("pno"));

		// pno에 대한 attachList 확보
		List<AttachVO> attachList = null;
		try {
			attachList = pdsService.getPds(pno).getAttachList();

			// 각 attachlist 를 이용 파일을 삭제.
			if(attachList != null) {
				for (AttachVO attach : attachList) {
					String storedFilePath = attach.getUploadPath() + File.separator
							+ attach.getFileName();
					File file = new File(storedFilePath);
					if (file.exists()) {
						file.delete();
					}
	
				}
			}
			//DB 내용 삭제
			pdsService.remove(pno);
			
		} catch (SQLException e1) {
			url="error/500";
			e1.printStackTrace();
		}

		return url;
	}

}








