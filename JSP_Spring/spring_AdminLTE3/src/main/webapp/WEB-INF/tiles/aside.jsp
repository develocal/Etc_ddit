<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<%=request.getContextPath()%>/member/getPicture.do?picture=${loginUser.picture}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <div class="row">
          	<a class="col-md-8" href="javascript:OpenWindow('<%=request.getContextPath() %>/member/detail.do?id=${loginUser.id }','',600,400)" class="d-block">${loginUser.id }</a>
          	<button class="btn btn-xs btn-primary col-xs-3 " type="button" 
          		onclick="location.href='<%=request.getContextPath() %>/logout';" >Logout</button>
          </div>
          <a href="tel:${loginUser.phone }">tel : ${loginUser.phone }</a><br/>
          <a href="mailto:${loginUser.email }">email : ${loginUser.email }</a>			          
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview"
        	data-accordion="false">
        	
	        <c:forEach items="${subMenuList }" var="subMenu">
	        	 <li class="nav-item" >
	                <a href="${subMenu[1] }" class="nav-link">
	                  <i class="${subMenu[2] }"></i>
	                  <p>${subMenu[0] }</p>
	                </a>
		        </li>
	        </c:forEach>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  
  
  
  
  
  
  
  
  
  