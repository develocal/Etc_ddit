package com.spring.view;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.view.AbstractView;

import com.spring.service.ExporterService;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

public class JaeJikReportView extends AbstractView{
	
	protected static Logger logger=
			Logger.getLogger(JaeJikReportView.class);
	
	private DataSource dataSource;
	public void setDataSource(DataSource dataSource) {
		this.dataSource=dataSource;
	}
	
	private ExporterService exporter;
	public void setExporter(ExporterService exporter) {
		this.exporter=exporter;
	}		

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, 
										   HttpServletRequest request,
										   HttpServletResponse response) throws Exception {
		
		String id=(String)model.get("id");
		String pwd=(String)model.get("pwd");
		String type=(String)model.get("type");
		String imagePath=(String)model.get("imagePath");
		
		System.out.println(imagePath);
		String jrFileName = null;
		
		// 1. 파라메터 Map 생성
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("imagePath", imagePath);
		params.put("id", id);
		params.put("pwd", pwd);
		
		// jrxml 파일 지정.
		jrFileName = "jaejik_A4.jrxml";
		
		// 2. jrxml 템플릿 결정/로딩
		InputStream reportStream = 
	this.getClass().getResourceAsStream("/com/spring/jrxml/" + jrFileName);
		
		// 3. 템플릿을 JasperDesign으로 변환
		JasperDesign jd = JRXmlLoader.load(reportStream);
		
		// 4. jrxml 컴파일
		JasperReport jr = JasperCompileManager.compileReport(jd);
		
		// 5. JasperPrint 생성
		JasperPrint jp = 
	JasperFillManager.fillReport(jr, params, dataSource.getConnection());
		
		// 6. outputstream 생성
		ByteArrayOutputStream baos = new ByteArrayOutputStream();

		// 7.Exporter 지정
		exporter.export(type, jp, response, baos);
		
		// 8.response 이용한 전송.
		write(response, baos);

	}
	
	private void write(HttpServletResponse response, 
					   ByteArrayOutputStream baos) {
		try {

			logger.debug(baos.size());

			ServletOutputStream outputStream = response.getOutputStream();
			
			//내보내기
			baos.writeTo(outputStream);
			outputStream.flush();

		} catch (Exception e) {
			logger.error("Unable to write report to the" + " output stream");
			throw new RuntimeException(e);
		}
	}

}





