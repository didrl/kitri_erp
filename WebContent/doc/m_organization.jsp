<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<script type="text/javascript">
var valueArr;
var list;
$(window).load(function(){
    $("input[name='chk_all']").click(function () {
        var chk_listArr = $("input[name='emp_id']");
        for (var i=0; i < chk_listArr.length; i++) {
            chk_listArr[i].checked = this.checked;
        }
    });
    
    $("input[name='chk_list']").click(function () { //리스트 항목이 모두 선택되면 전체 선택 체크
        if ($("input[name='emp_id']:checked").length =="${olist.size()}") {
            $("input[name='chk_all']")[0].checked = true;
        }else  {                                                //리스트 항목 선택 시 전체 선택 체크를 해제함
            $("input[name='chk_all']")[0].checked = false; 
        }
    });    
    
});

/**
 * 선택된 체크박스의 값을 배열에 담는다
 */
function checkSelectedValue(){
    valueArr = new Array();
    list = $("input[name='emp_id']");
    for(var i = 0; i < list.length; i++){
        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
            valueArr.push(list[i].value);
        }
  }
}
 </script>   

<div id="wrapper"> 

<div id="page-wrapper">

		
<div class="panel panel-default">
	<div class="panel-heading">
    	부서구조
    </div>
    <!-- .panel-heading -->
    <div class="panel-body">
     <label>전체선택<input type="checkbox" id="chk_all" name="chk_all"></label>
<c:set var="dep_id" value=""/>
<c:set var="grade_id" value=""/>
	<c:if test="${olist.size()!=0}">
<c:forEach varStatus="i" var="org" items="${olist}">
	<c:if test="${dep_id != org.dep_id}">
    	<div class="panel-group" id="accordion">
	    	<div class="panel panel-default">
	        	<div class="panel-heading">
	            	<h4 class="panel-title">
	            	   
	                	<a data-toggle="collapse" data-parent="#accordion" href="#collapse${org.dep_id}">${org.dep_name} </a>
	                </h4>
	            </div>
	        	<div id="collapse${org.dep_id}" class="panel-collapse collapse in">
		        	<div class="panel-body">
						<ul>
	<c:set var="dep_id" value="${org.dep_id}"/>

	</c:if>
	<c:if test="${grade_id != org.grade_id}"> 
			            	<!-- 직급 -->
		                    <li>
		                    	<ul>
	<c:set var="grade_id" value="${org.grade_id}"/>
	</c:if>
		                        	<li>${org.grade_name} ${org.emp_name} <input type="checkbox" id="emp_id" name="emp_id"
								value="${org.emp_id}"></li>
	<c:if test="${i.index < olist.size() - 1 }">
		<c:if test="${grade_id != olist.get(i.index + 1).grade_id}">
		                        </ul>
		                    </li>
   		</c:if>
 
   		<c:if test="${dep_id != olist.get(i.index + 1).dep_id}">
		                </ul>
		            </div>
	        	</div>
	    	</div>
    	</div>
   		</c:if>
   	</c:if>
</c:forEach>
	</div>
	</c:if>

<!-- .panel-body -->

</div>

</div>
<!-- /#page-wrapper -->
<center>
<input type="submit" value="선택">
<input type="reset" value="취소" onclick="javascript:self.close()">
</center>
</div>
<!-- /#wrapper -->
</body>
</html> 
