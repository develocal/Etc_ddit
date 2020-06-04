package com.spring.controller;

import java.io.File;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.AttachDAO;
import com.spring.dto.AttachVO;
import com.spring.dto.PdsVO;
import com.spring.service.PdsService;

@Controller
@RequestMapping("/pds")
public class PdsController {

	@Autowired
	private PdsService service;

	public void setService(PdsService service) {
		this.service = service;
	}

	@Autowired
	private AttachDAO attachDAO;

	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	}

	@Resource(name = "fileUploadPath")
	private String fileUploadPath;

	@RequestMapping("/list")
	public ModelAndView list(SearchCriteria cri, ModelAndView mnv)
			throws Exception {
		String url = "pds/list.page";

		Map<String, Object> dataMap = service.getList(cri);

		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);

		return mnv;
	}

	@RequestMapping("/registForm")
	public ModelAndView registForm(ModelAndView mnv) throws Exception {
		String url = "pds/regist.open";
		mnv.setViewName(url);
		return mnv;
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public void regist(RegistPdsCommand registReq, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String fileUploadPath = this.fileUploadPath;

		List<AttachVO> attachList = new ArrayList<AttachVO>();
		if (registReq.getUploadFile() != null) {
			for (MultipartFile multi : registReq.getUploadFile()) {
				String fileName = UUID.randomUUID().toString().replace("-", "")
						+ "$$" + multi.getOriginalFilename();
				File target = new File(fileUploadPath, fileName);

				if (!target.exists()) {
					target.mkdirs();
				}

				multi.transferTo(target);

				AttachVO attach = new AttachVO();
				attach.setUploadPath(fileUploadPath);
				attach.setFileName(fileName);
				attach.setFileType(fileName.substring(
						fileName.lastIndexOf('.') + 1).toUpperCase());

				attachList.add(attach);
			}
		}
		PdsVO pds = registReq.toPdsVO();
		pds.setAttachList(attachList);

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			service.regist(pds);

			out.println("<script>");
			out.println("alert('정상적으로 등록되었습니다.');");
			out.println("window.opener.location.href='"
					+ request.getContextPath() + "/pds/list';");
			out.println("window.close();");
			out.println("</script>");
		} catch (SQLException e) {
			out.println("<script>");
			out.println("alert('등록에 실피했습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
		}

	}

	@RequestMapping("/detail")
	public ModelAndView detail(ModelAndView mnv, int pno) throws Exception {
		String url = "pds/detail.open";

		PdsVO pds = service.getPds(pno);

		mnv.addObject("pds", pds);
		mnv.setViewName(url);

		return mnv;
	}

	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(ModelAndView mnv,
	// /@ModelAttribute("cri") SearchCriteria cri,
			int pno) throws Exception {
		String url = "pds/modify.open";

		PdsVO pds = service.getPds(pno);

		mnv.addObject("pds", pds);
		mnv.setViewName(url);

		return mnv;
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public void regist(ModifyPdsCommand modifyReq, HttpServletResponse response)
			throws Exception {

		String fileUploadPath = this.fileUploadPath;

		// 파일삭제
		if (modifyReq.getDeleteFile() != null) {
			for (int ano : modifyReq.getDeleteFile()) {
				AttachVO attach = attachDAO.selectAttachByAno(ano);
				File deleteTarget = new File(fileUploadPath,
						attach.getFileName());
				if (deleteTarget.exists()) {
					deleteTarget.delete();
					attachDAO.deleteAttach(ano);
				}
			}
		}

		// 파일 추가
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		if (modifyReq.getUploadFile() != null) {
			for (MultipartFile multi : modifyReq.getUploadFile()) {
				String fileName = UUID.randomUUID().toString().replace("-", "")
						+ "$$" + multi.getOriginalFilename();
				File target = new File(fileUploadPath, fileName);
				if (!target.exists()) {
					target.mkdirs();
				}
				multi.transferTo(target);

				// Attach List 제작
				AttachVO attach = new AttachVO();
				attach.setFileName(fileName);
				attach.setUploadPath(fileUploadPath);
				attach.setFileType(fileName.substring(fileName.lastIndexOf(".") + 1));

				attachList.add(attach);
			}
		}

		PdsVO pds = modifyReq.toPdsVO();
		pds.setAttachList(attachList);

		// DB에 해당 데이터 추가
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			service.modify(pds);

			out.println("<script>");
			out.println("alert('수정되었습니다.');");
			out.println("location.href='detail?pno=" + pds.getPno() + "';");
			out.println("</script>");

		} catch (SQLException e) {
			out.println("<script>");
			out.println("alert('수정이 실패했습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
		}

	}

	@RequestMapping("/remove")
	public void remove(int pno, HttpServletResponse response) throws Exception {

		String fileUploadPath = this.fileUploadPath;

		List<AttachVO> attachList = attachDAO.selectAttachesByPno(pno);

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			service.remove(pno);

			if (attachList != null) {
				for (AttachVO attach : attachList) {
					File target = new File(attach.getUploadPath(),
							attach.getFileName());
					if (target.exists()) {
						target.delete();
					}
				}
			}

			out.println("<script>");
			out.println("alert('삭제되었습니다.');");
			out.println("window.close();");
			out.println("window.opener.location.reload(true);");
			out.println("</script>");

		} catch (SQLException e) {
			out.println("<script>");
			out.println("alert('삭제가 실패했습니다.');");
			out.println("history.go(-1)");
			out.println("</script>");
		}

	}
}
