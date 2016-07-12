<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/header.jsp" %>    
    
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                    <li>
                    <a href="#">일정관리<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${root }/admin/schedule.jsp">부서일정</a>
                        </li>
                        <li>
                            <a href="#">개인일정</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
              <li>
                    <a href="#">프로젝트<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${root }/project/project_undone.jsp">진행 중 프로젝트</a>
                        </li>
                        <li>
                            <a href="${root }/project/project_done.jsp">완료된 프로젝트</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                  <li>
                    <a href="#">커뮤니티<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${root }/board/list.jsp">게시판</a>
                        </li>
                        <li>
                            <a href="#">자료실</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#">주소록<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${root }/addressbook/retire_list.jsp">개인주소록</a>
                        </li>
                        <li>
                            <a href="#">부서주소록</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
              
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>