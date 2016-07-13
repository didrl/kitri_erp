<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp" %>    
    
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="${root }/admin/permission.jsp">권한코드관리</a>
                </li>
                <li>
                    <a href="${root }/admin/inout.jsp">출퇴근 코드 관리</a>
                </li>
                <li>
                    <a href="${root }/admin/schedule.jsp">일정관리</a>
                </li>
                <li>
                    <a href="#">사원관리<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${root }/admin/employee.jsp">사원등록</a>
                        </li>
                        <li>
                            <a href="#">사원목록</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="${root }/admin/organization.jsp">부서/직급 설정</a>
                </li>
                <li>
                    <a href="${root }/admin/chart.jsp">통계</a>
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>