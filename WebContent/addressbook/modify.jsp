<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<!--css/script start-->
<!-- DataTables -->
	<link href="${root}/webjars/datatables/1.10.12/media/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<link href="${root}/webjars/datatables/1.10.12/media/css/jquery.dataTables.min.css" rel="stylesheet" />
	<script src="${root}/webjars/datatables/1.10.12/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${root}/webjars/datatables/1.10.12/media/js/jquery.dataTables.min.js"></script>
<!--css/script end-->	

<div id="wrapper"> 
   <!-- Page Content -->
    <div id="page-wrapper">
       <div class="container-fluid">
       
       <!--page subject start-->
       <div class="row">
       		<div class="col-lg-12">
       			<h1 class="page-header" align="left">주소 수정</h1>
     		</div>
       	</div>
       	<!--page subject end-->
		<!--page content start-->
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-default">
				       <div class="panel-body">	
				       	<a href="" class="btn btn-primary"> 목록으로 돌아가기 </a> 
						<a href="" class="btn btn-primary"> 정보 수정 </a> 
						</div>
				</div>
<!-- write addressbook start  -->
			<form class="form-horizontal">
			<fieldset>
			
			<!-- Button (triple) -->
			<div class="form-group">
			  <div class="col-md-8">
			    <button id="addrb_list" name="addrb_list" class="btn btn-primary">목록으로 돌아가기</button>
			    <button id="write_addrb" name="modify_addrb" class="btn btn-primary">정보 수정</button>
			  </div>
			</div>
			
			<h4>개인 정보</h4>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_name">이름</label>  
			  <div class="col-md-4">
			  <input id="addr_name" name="addr_name" type="text" placeholder="이 름" class="form-control input-md">
			    
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="arrd_email">이메일 주소</label>  
			  <div class="col-md-5">
			  <input id="addr_email" name="addr_email" type="text" placeholder="kitri@kitri.com" class="form-control input-md">
			    
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_tel">휴대전화 번호</label>  
			  <div class="col-md-4">
			  <input id="addr_tel" name="addr_tel" type="text" placeholder="0101234567" class="form-control input-md">
			    
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_etel">전화번호</label>  
			  <div class="col-md-4">
			  <input id="addr_etel" name="addr_etel" type="text" placeholder="027770000" class="form-control input-md">
			  <span class="help-block">'-'를 제외하고 입력해주세요</span>  
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_fax">팩스번호</label>  
			  <div class="col-md-4">
			  <input id="addr_fax" name="addr_fax" type="text" placeholder="023334444" class="form-control input-md">
			  <span class="help-block">'-'를 제외하고 입력해주세요</span>  
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_addr">주 소</label>  
			  <div class="col-md-8">
			  <input id="addr_addr" name="addr_addr" type="text" placeholder="서울특별시 마포구 연남로 2 21-2" class="form-control input-md">
			    
			  </div>
			</div>
			
			<h4>회사 정보</h4>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_cpname">회사 이름</label>  
			  <div class="col-md-5">
			  <input id="addr_cpname" name="addr_cpname" type="text" placeholder="" class="form-control input-md">
			    
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_cptel">회사 전화번호</label>  
			  <div class="col-md-4">
			  <input id="addr_cptel" name="addr_cptel" type="text" placeholder="029994343" class="form-control input-md">
			  <span class="help-block">'-'를 제외하고 입력해주세요</span>  
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_cpaddr">회사 주소</label>  
			  <div class="col-md-8">
			  <input id="addr_cpaddr" name="addr_cpaddr" type="text" placeholder="서울특별시 용산구 한남로 27 정보빌딩 3층" class="form-control input-md">
			    
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_cpname">근무 부서</label>  
			  <div class="col-md-4">
			  <input id="addr_cpname" name="addr_cpname" type="text" placeholder="인사관리" class="form-control input-md">
			    
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="addr_cpgrade">직 급</label>  
			  <div class="col-md-4">
			  <input id="addr_cpgrade" name="addr_cpgrade" type="text" placeholder="주임" class="form-control input-md">
			    
			  </div>
			</div>
			
			</fieldset>
			</form>


<!-- write addressbook end  -->
			</div>

 		</div>
        <!--page content END-->
		</div>
       <!-- /.container -->
	</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->     
</body>
</html>
