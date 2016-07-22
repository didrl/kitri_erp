<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  import="java.sql.*"%>
<%@ include file="/common/common.jsp"%>
<%@ include file="/common/user_sidebar.jsp"%>
<%String root = request.getContextPath(); %>
<%
	request.setCharacterEncoding("UTF-8");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String name = new String(request.getParameter("empname").getBytes("ISO-8859-1"), "UTF-8");
	String grade = new String(request.getParameter("gradename").getBytes("ISO-8859-1"), "UTF-8");
	String id = new String(request.getParameter("empid").getBytes("ISO-8859-1"), "UTF-8");
	String dep = new String(request.getParameter("depname").getBytes("ISO-8859-1"), "UTF-8");
	String tel = request.getParameter("tel");
	String email =request.getParameter("email1")+"@"+request.getParameter("email2");
	String image =request.getParameter("image");
	if(image==""){
		image=root+"/img/basic_profile.JPG";
		System.out.println(image);
	}
%>
<div id="page-wrapper">

	<div class="row">


		<div class="col-lg-7">
			<table class="table">
				<tbody>

					<tr>
						<td colspan="3">
							<div class="panel panel-default">
								<div class="panel-heading">직원 신상정보</div>
								<!-- /.panel-heading -->
								<div class="panel-body">

									<div class="col-lg-2"
										style='width: 130; height: 144; margin-top:20px;margin-right: 10px; border: 1x solid #595959; vertical-align: middle;'>
										<img
											src='<%=image%>'
											border=0 width='150' height='180'
											style='border: 1x solid #595959;' align='absmiddle'>
									</div>
									<div class="col-lg-10">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover">
												<col width="100px" class="overf"></col>
												<col width="" class="overf"></col>

												<thead>
													<tr>
														<th>
															<div>
																<nobr> ID </nobr>
															</div>
														</th>
														<td>
															<div style='width: 400px;'>
																<nobr>
																	<span class="left mar5r"><%=id%></span>
																	<!--a href="#blank-link" onclick="javascript:try { parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { try { parent.parent.Ext.Msg.alert('Groupware Demo','<span style=color:#C8C9CA;><br />데모 체험하기는 글쓰기 등록 및 수정이 제한되어 있습니다. <br /><br />이점 양해해주시기 바랍니다.</span>');return false; } catch(e) { alert('그룹웨어 데모에서는 사용하실 수 없습니다.');return false; } }ServiceGate('2','박소현| |desk09@whoisdesk.kr');" ><span><img src="http://static.whoisdesk.net/Src/Img/Renewal/icon_sticky-note-pin.gif" /> 쪽지</span></a-->
															
																</nobr>
															</div>
														</td>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th>
															<div>
																<nobr> 이름 </nobr>
															</div>
														</th>
														<td>
															<div>
																<nobr><%=name%></nobr>
															</div>
														</td>
													</tr>
													<tr>
														<th>
															<div>
																<nobr>부서 </nobr>
															</div>
														</th>
														<td>
															<div>
																<nobr><%=dep%></nobr>
															</div>
														</td>
													</tr>
													<tr>
														<th>
															<div>
																<nobr> 직급 </nobr>
															</div>
														</th>
														<td>
															<div>
																<nobr> <%=grade%> </nobr>
															</div>
														</td>
													</tr>
													<tr>
														<th>
															<div>
																<nobr> 전화번호 </nobr>
															</div>
														</th>
														<td>
															<div>
																<nobr><%=tel%></nobr>
															</div>
														</td>
													</tr>
													<tr>
														<th>
															<div>
																<nobr> Email </nobr>
															</div>
														</th>
														<td>
															<div>
																<nobr><%=email%></nobr>
															</div>
														</td>
													</tr>
												
												</tbody>
											</table>
										</div>
									</div>
							
									<!-- /.panel-body -->
								</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

