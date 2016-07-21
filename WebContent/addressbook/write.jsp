<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<!--css/script start-->
<!-- DataTables -->
	<link href="${root}/webjars/datatables/1.10.12/media/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<link href="${root}/webjars/datatables/1.10.12/media/css/jquery.dataTables.min.css" rel="stylesheet" />
	<script src="${root}/webjars/datatables/1.10.12/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${root}/webjars/datatables/1.10.12/media/js/jquery.dataTables.min.js"></script>
<!--css/script end-->	


<div id="page-wrapper">
	<!--  검색 버튼 영역 -->
	<div id="title">
		<h2><span class="address">
				개인주소록 주소추가
			</span>
		</h2>
	</div>
<div class="col-lg-12">
	<div class="toparea">		
		<span class="leftarea">
			<span class="btn">
				
					<a href="" class="btn btn-primary">
				
				
					목록
				</a>
			</span>
		</span>
		<span class="rightarea">
			<span class="btn">
				<a href="" class="btn btn-primary">
					
					주소추가
				</a>
				<a href="" class="btn btn-primary">
				계속추가
				</a>
			</span>
		</span>
	</div>


	<div class="table_view">

	<h4> 개인정보</h4>

	<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table table-bordered" >
		<col width="180px"></col>
		<col width=""></col>
		<thead>
		<tr>
			<th>주소록 그룹</th>
			<td>
				<select name="cat_path" class="">
				<option value='' selected>/<option value=''>/학교<option value=''>/회사
				</select> 
			</td>
		</tr>
		</thead>

		<tbody>
		<tr>
			<th>이름</th>
			<td><input name="name" type="text" maxlength="32" class="form_g" style="width:250px; ime-mode:active;"></td>
		</tr>
		<tr>
			<th>메일주소</th>
			<td><input name="email1" type="text" maxlength="32" class="form_g" style="width:250px; ime-mode:inactive;">
		       @<input name="email2" type="text" maxlength="50" class="form_g" style="width:250px; ime-mode:inactive;">
			</td>
		</tr>

		<tr>
			<th>휴대폰</th>
			<td><select name="cell_num1" class="form_g">
				<option value='010' >010</option>
<option value='011' >011</option>
<option value='016' >016</option>
<option value='017' >017</option>
<option value='018' >018</option>
<option value='019' >019</option>

				</select>
				- 
				<input name="cell_num2" type="text" maxlength="4" class="form_g" style="width:80px">
				- 
				<input name="cell_num3" type="text" maxlength="4" class="form_g" style="width:80px">
			</td>
		</tr>

		<tr>
			<th>
				전화번호
			</th>
			<td>
				<input name="phone_num1" type="text" maxlength="5" class="form_g" style="width:45px">
				- 
				<input name="phone_num2" type="text" maxlength="10" class="form_g" style="width:80px">
				- 
				<input name="phone_num3" type="text" maxlength="10" class="form_g" style="width:80px">
			</td>
		</tr>

		<tr>
			<th>
				팩스번호
			</th>
			<td>
				<input name="fax_num1" type="text" maxlength="5" class="form_g" style="width:45px">
				- 
				<input name="fax_num2" type="text" maxlength="10" class="form_g" style="width:80px">
				- 
				<input name="fax_num3" type="text" maxlength="10" class="form_g" style="width:80px">
			</td>
		</tr>

	

		<tr>
			<th>
				주소
			</th>
			<td>
				<input name="zipcode1" type="text" maxlength="7" class="form_g" style="width:70px">
				- 
				<input name="zipcode2" type="text" maxlength="7" class="form_g" style="width:70px"> 
				<span class="button">
					<a href="" class="btn btn-primary">
						<span class="addpadding">우편번호</span>
					</a> 
				</span>
				<br />
				<input name="address" maxlength="128" type="text" class="form_g" style="width:250px; ime-mode:active;">
			</td>
		</tr>

		
		</tbody>
	</table>

	<h4>회사정보</h4>

	<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table table-bordered">

		<thead>
		<tr>
			<th>회사이름</th>
			<td>
				<input name="company_name" type="text" maxlength="128" class="form_g" style="width:250px; ime-mode:active;"> 
			</td>
		</tr>
		</thead>

		<tbody>
		<tr>
			<th>부서</th>
			<td>
				<input name="company_part" type="text" maxlength="32" class="form_g" style="width:250px; ime-mode:active;">
			</td>
		</tr>

		<tr>
			<th>
				직책
			</th>
			<td>
				<input name="company_duty" type="text" maxlength="32" class="form_g" style="width:250px; ime-mode:active;">
			</td>
		</tr>

		<tr>
			<th>
				전화번호
			</th>
			<td>
				<input name="company_phone_num1" type="text" maxlength="5" class="form_g" style="width:45px">
				- 
				<input name="company_phone_num2" type="text" maxlength="10" class="form_g" style="width:80px">
				- 
				<input name="company_phone_num3" type="text" maxlength="10" class="form_g" style="width:80px">
				<br />
				내선 :
				<input name="company_phone_num4" type="text" maxlength="5" type="text" class="form_g" style="width:76px">
			</td>
		</tr>

		<tr>
			<th>
				주소
			</th>
			<td>
				<input name="company_zipcode1" type="text" maxlength="7" class="form_g" style="width:70px">
				- 
				<input name="company_zipcode2" type="text" maxlength="7" class="form_g" style="width:70px">
				<span class="button">
					<a href="" class="btn btn-primary">
						<span class="addpadding">우편번호</span>
					</a>
				</span>
				<br /> 
				<input name="company_address" type="text" class="form_g" style="width:250px; ime-mode:active;">
			</td>
		</tr>

		
	
	</tbody>
	</table>
<br>
<br>
<br>

	<div class="btmarea">		
		<span class="leftarea">
			<span class="btn">
				<a href="" class="btn btn-primary">
					목록
				</a>
			</span>
		</span>
		<span class="rightarea">
			<span class="btn">
				<a href="" class="btn btn-primary">
					
					주소추가
				</a>
				<a href="" class="btn btn-primary">
				
					계속추가
				</a>
			</span>
		</span>
	</div>


</div>
</div>
</div>
<%@ include file="/common/end.jsp" %>