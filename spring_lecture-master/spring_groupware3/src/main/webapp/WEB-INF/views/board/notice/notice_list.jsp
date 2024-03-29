<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
	<style>
		table{
			width:100%;
		}
	</style>	
	<script>
		$('.maninfo').each(function(){}).click(function(event) { event.preventDefault(); });	
	</script>
</head>


<div class="page-content main-content" style="padding: 0px;">	
	<div id="if_list_div" style="position:relative;sheight:0;padding:0;soverflow:hidden;" class="show">
		<div id="if_list" name="if_list" style="position: absolute; top: 0px; left: 0px; bottom: 0px; height: 796px; width: 100%; border: 0px;" class="no-skin listBody">
			<div class="breadcrumbs" id="breadcrumbs" style="border:none;">
				<ul class="breadcrumb">
					<li>
						<i class="ace-icon fa fa-comments-o home-icon bigger-150"></i>
						&nbsp;커뮤니티
					</li>
					<li class="active">
						공지사항
					</li>
				</ul>
			</div>
			<!-- page content -->		
			<div class="page-content main-content" style="padding:0;">
				<div class="page-content" >		
					<form id="search" action="list" method="post">
						<input name="page" type="hidden" value="${pageMaker.cri.page }">
						<input name="perPageNum" type="hidden" value="${pageMaker.cri.perPageNum }">
							
					<!-- 상단 우측버튼 -->
					<div class="wizard-actions-L">
						<button type="button" class="btn btn-sm btn-white btn-bold" onclick="OpenWindow('<%=request.getContextPath()%>/board/regist','','850','620');">
									<i class="red ace-icon fa fa-pencil-square-o bigger-120"></i>
							<b>등&nbsp;록</b>
						</button>
						<div class="wizard-inner-R">
							<select id="searchType" name="searchType" style="width:100px;" class="form-control">
								<option value="">검색구분</option>
								<option value="t" ${pageMaker.cri.searchType eq 't' ? 'selected':'' }>제목</option>
								<option value="w" ${pageMaker.cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
								<option value="c" ${pageMaker.cri.searchType eq 'c' ? 'selected':'' }>본문</option>
								<option value="tc" ${pageMaker.cri.searchType eq 'tc' ? 'selected':'' }>제목+본문</option>
								<option value="cw" ${pageMaker.cri.searchType eq 'cw' ? 'selected':'' }>본문+작성자</option>
								<option value="tcw" ${pageMaker.cri.searchType eq 'tcw' ? 'selected':'' }>제목+본문+작성자</option>
							</select>
							
							<div class="input-group">
								<input id="searchValue" name="keyword" style="width:100px; margin-left:5px; border-radius: 0px !important;" placeholder="Search for ..." class="form-control" type="text" value="${pageMaker.cri.keyword }">
								<span id="gridSearch" class="input-group-btn" style="display: inline;">
									<button type="button" id="searchBtn" class="btn btn-sm btn-white">검색</button>
								</span>
							</div>
							<span id="gridSearchReset" style="display:none;">
								<button type="button" class="btn btn-sm btn-white">
									<i class="red ace-icon fa fa-times bigger-120"></i>
								</button>
							</span>
						</div>
						
					</div>
					<!-- 상단 우측버튼 -->
					
					</form>
					<br/>	
					
					<!-- 선긋기 -->
					<div class="bline"></div>
					<div class="hr_line1">&nbsp;</div>
					<div class="bline"></div>
					
					<!-- jqGrid Begins -->
					<div class="row">
						<div class="col-xs-12">
							<div id="grid_container">
								<div class="ui-jqgrid ui-widget ui-widget-content ui-corner-all" id="gbox_grid-table" dir="ltr" >
								<div class="loading ui-state-default ui-state-active" id="load_grid-table" style="display: none;"> Data Loading...</div><div class="ui-jqgrid-view " role="grid" id="gview_grid-table">
								<div class="ui-jqgrid-titlebar ui-jqgrid-caption ui-widget-header ui-corner-top ui-helper-clearfix" style="display: none;"><a role="link" class="ui-jqgrid-titlebar-close HeaderButton ui-corner-all" title="Toggle Expand Collapse Grid" style="right: 0px;"><span class="ui-jqgrid-headlink ui-icon ui-icon-circle-triangle-n"></span></a><span class="ui-jqgrid-title"></span></div><div class="ui-jqgrid-hdiv ui-state-default ui-corner-top" >
									<div class="ui-jqgrid-hbox" style="padding-right:0;">
										<table class="ui-jqgrid-htable ui-common-table " role="presentation" aria-labelledby="gbox_grid-table">
											<thead style="visibility: visible;">
												<tr class="ui-jqgrid-labels" role="row">													
													<c:forEach var="col" items="${colNames}" >
														<th id="grid-table_apprNowUser" role="columnheader" class="ui-th-column ui-th-ltr ui-state-default" aria-selected="true" style="width:${col.width}%;">
															<span class="ui-jqgrid-resize ui-jqgrid-resize-ltr" style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_grid-table_apprNowUser" class="ui-jqgrid-sortable">${col.colName }</div>
														</th>						
													</c:forEach>
												</tr>
											</thead>
										</table>
									</div>
								</div>
								
								<div class="ui-jqgrid-bdiv"  style="max-height: 150px;">
									<div style="position:relative;">										
										<table id="grid-table" tabindex="0" role="presentation" aria-multiselectable="false" aria-labelledby="gbox_grid-table" class="ui-jqgrid-btable ui-common-table">
											<tr class="jqgfirstrow" role="row">												
												<c:forEach var="col" items="${colNames }" >															
													<td role="gridcell" style="width:${col.width}%;"></td>
												</c:forEach>																																						
												
											</tr>
											<c:forEach var="pointNotice" items="${pointNoticeList }">											
											<tr role="row" class="jqgrow ui-row-ltr ui-widget-content" >
												<td role="gridcell" style="text-align:center;" >
													&nbsp;<i class="red ace-icon fa fa-star bigger-120" title="중요"></i>
												</td>
												<td role="gridcell" style="text-align:center;" >${pointNotice.nno }</td>
												<td role="gridcell" >
													<a href="#" onclick="OpenWindow('detail?nno=${pointNotice.nno }','','850','620')"
													   style='<c:if test="${pointNotice.viewcnt >= 5}" >font-weight:bold;color:blue;</c:if>'>${pointNotice.title } 
													   
												</td>
												<td role="gridcell" style="text-align:center;" >
													<fmt:formatDate value="${pointNotice.regDate }" pattern="yyyy-MM-dd" />
												</td>
												<td role="gridcell" style="text-align:center;" >
													<a class="maninfo" rel="${pointNotice.writer }" href="#" data-hasqtip="21">
														<i class="pink2 ace-icon fa fa-user" title="작성자"></i>															
														${pointNotice.writer }
													</a>
												</td>
												<td role="gridcell" style="text-align:center;"> 
															<c:if test="${!empty notice.attachList }">
																<i class=" ace-icon fa fa-file" title="첨부있음"></i>																
															</c:if> 
															<c:if test="${empty notice.attachList }">
																<i class="grey ace-icon fa fa-times bigger-120" title="첨부없음"></i>																
															</c:if>
												</td>	
												<td role="gridcell" style="text-align:center;" >${pointNotice.viewcnt }</td>
											</tr>
											</c:forEach>												
										</table>
									</div>	
								</div>																
								
								<!-- 선긋기 -->
								<div class="hr_line1" style="border-top : 1px solid #eee">&nbsp;</div>
								<div class="bline">&nbsp;</div>
								<div class="hr_line1" style="border-top : 1px solid #eee">&nbsp;</div>
								
								<div class="ui-jqgrid-bdiv"  style="height: 460px;">
									<div style="position:relative;">
										<div></div>
											<table id="grid-table" tabindex="0" role="presentation" aria-multiselectable="false" aria-labelledby="gbox_grid-table" class="ui-jqgrid-btable ui-common-table">
												
													<tr class="jqgfirstrow" role="row">
													<c:forEach var="col" items="${colNames }" >															
														<td role="gridcell" style="width:${col.width}%;"></td>
													</c:forEach>
													</tr>
													<c:forEach var="notice" items="${noticeList }">
													<tr role="row" class="jqgrow ui-row-ltr ui-widget-content">
														<td role="gridcell" style="text-align:center;" >
															<c:if test="${notice.point > 0 }">
																&nbsp;<i class="red ace-icon fa fa-star bigger-120" title="중요"></i>
															</c:if>
															<c:if test="${notice.point < 1 }">
																&nbsp;<i class="light-grey ace-icon fa fa-star-o bigger-120" title="일반"></i>
															</c:if>
														</td>
														<td role="gridcell" style="text-align:center;" >${notice.nno }</td>
														<td role="gridcell" >
															<a href="#" onclick="OpenWindow('detail?nno=${notice.nno }','','850','620')"
															   style='<c:if test="${notice.viewcnt >= 5}" >font-weight:bold;color:blue;</c:if>'>${notice.title } 
															   
														</td>
														<td role="gridcell" style="text-align:center;" >
															<fmt:formatDate value="${notice.regDate }" pattern="yyyy-MM-dd" />
														</td>
														<td role="gridcell" style="text-align:center;" >
															<a class="maninfo" rel="${notice.writer }" href="#" data-hasqtip="21">
																<i class="pink2 ace-icon fa fa-user" title="작성자"></i>															
																${notice.writer }
															</a>
														</td>
														<!-- 첨부 유무 -->
														<td role="gridcell" style="text-align:center;"> 
															<c:if test="${!empty notice.attachList }">
																<i class=" ace-icon fa fa-file" title="첨부있음"></i>																
															</c:if> 
															<c:if test="${empty notice.attachList }">
																<i class="grey ace-icon fa fa-times bigger-120" title="첨부없음"></i>																
															</c:if>
														</td>														
														<td role="gridcell" style="text-align:center;" >${notice.viewcnt }</td>
													</tr>
													</c:forEach>
												
											</table>
										</div>
									</div>
									<div id="grid-pager" class="ui-jqgrid-pager ui-state-default ui-corner-bottom" dir="ltr">
										<div id="pg_grid-pager" class="ui-pager-control" role="group">
											<table class="ui-pg-table ui-common-table ui-pager-table ">
												<tr>
													<td id="grid-pager_left" align="left">
														<div class="ui-pg-div">
															<span class="ui-icon ace-icon"></span>
														</div>														
													</td>
													<td id="grid-pager_center" align="center" style="width:320px;">
														<table class="ui-pg-table ui-common-table ui-paging-pager">
															<tr>
																<td id="first_grid-pager" class="ui-pg-button ui-corner-all ui-state-disabled" title="First Page" style="cursor: default;">
																	<span class="ui-icon ace-icon"><b> << </b></span>
																</td>
																<td id="prev_grid-pager" class="ui-pg-button ui-corner-all ui-state-disabled" title="Previous Page" style="cursor: default;">
																	<span class="ui-icon ace-icon"><b> < </b></span>
																</td>
																<td class="ui-pg-button ui-state-disabled">
																	<span class="ui-separator"></span>
																</td>
																<td id="input_grid-pager" dir="ltr">
																	<input id="pageNum" class="ui-pg-input ui-corner-all" type="text" size="2" maxlength="7" value="${pageMaker.cri.page }" style="width:40px;"> / <span id="sp_1_grid-pager">${pageMaker.realEndPage }</span>
																</td>
																<td class="ui-pg-button ui-state-disabled">
																	<span class="ui-separator"></span>
																</td>
																<td id="next_grid-pager" class="ui-pg-button ui-corner-all ui-state-disabled" title="Next Page" style="cursor: default;">
																	<span class="ui-icon ace-icon"><b> > </b></span>
																</td>
																<td id="last_grid-pager" class="ui-pg-button ui-corner-all ui-state-disabled" title="Last Page" style="cursor: default;">
																	<span class="ui-icon ace-icon"><b> >> </b></span>
																</td>
																<td dir="ltr">
																	<select id="perPageNum" class="ui-pg-selbox ui-widget-content ui-corner-all" role="listbox" title="Records per Page">
																		<option role="option" value="10" ${pageMaker.cri.perPageNum ==10 ? 'selected' : '' }>10</option>
																		<option role="option" value="20" ${pageMaker.cri.perPageNum ==20 ? 'selected' : '' }>20</option>
																		<option role="option" value="30" ${pageMaker.cri.perPageNum ==30 ? 'selected' : '' }>30</option>
																		<option role="option" value="50" ${pageMaker.cri.perPageNum ==50 ? 'selected' : '' }>50</option>
																		<option role="option" value="100" ${pageMaker.cri.perPageNum ==100 ? 'selected' : '' }>100</option>
																	</select>
																</td>
															</tr>
														</table>
													</td>
													<td id="grid-pager_right" align="right">
														<div dir="ltr" style="text-align:right" class="ui-paging-info">10 건</div>
													</td>
												</tr>
											</table>
										</div>
									</div>
								</div>								
							</div>
						</div>
					</div>
					<!-- jqGrid Ends -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/board/list_js.jsp" %>







