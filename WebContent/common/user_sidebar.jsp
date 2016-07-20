<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp" %>    
    
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
                            <a href="${root}/proposal/viewDoc.erp?doc_id=1607-010034">기안서</a>
							<a href="${root}/btripReport/viewDoc.erp?doc_id=1607-050045">출장보고서</a>
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
                    <a href="#">전자결재<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                             <a href="#">결재문서 작성<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                            <li>
                            <a href="${root}/doc/mvDoc.erp?doc_type=1">기안서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/mvDoc.erp?doc_type=2">품의서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/mvDoc.erp?doc_type=3">지출결의서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/mvDoc.erp?doc_type=4">출장보고서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/mvDoc.erp?doc_type=5">출장신청서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/mvDoc.erp?doc_type=6">휴가신청서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/mvDoc.erp?doc_type=7">업무일지</a>
                            </li>
                            </ul>
                        </li>
                        <li>
                            <a href="${root}/doc/docBox/approval_undone.erp">결재 문서함<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                            <li>
                            <a href="${root}/doc/docBox/approval_undone.erp">미결재 문서</a>
                            </li>
                             <li>
                            <a href="${root}/doc/docBox/approval_done.erp">결재완료 문서</a>
                            </li>
                            </ul>
                        </li>
                       
                           <li>
                            <a href="${root}/doc/docBox/per_report.erp">개인 문서함<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                            <li>
                            <a href="${root}/doc/docBox/per_report.erp">상신 문서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/docBox/per_temp.erp">임시저장</a>
                            </li>
                            <li>
                            <a href="${root}/doc/docBox/per_return.erp">반려 문서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/docBox/per_done.erp">결재 완료</a>
                            </li>
                            <li>
                            <a href="${root}/doc/docBox/per_cancel.erp">상신 취소</a>
                            </li>
                            </ul>
                        </li>
                           <li>
                            <a href="${root}/doc/docBox/coop_undone.erp">협조 문서함<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                            <li>
                            <a href="${root}/doc/docBox/coop_undone.erp">미결재 문서</a>
                            </li>
                            <li>
                            <a href="${root}/doc/docBox/coop_done.erp">결재완료 문서</a>
                            </li>
                            </ul>
                        </li>
                           <li>
                            <a href="${root}/doc/docBox/dep_docBox.erp">부서 문서함</a>
                          
                        </li>
                           <li>
                            <a href="${root}/doc/docBox/ref_docBox.erp">참조 문서함</a>
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