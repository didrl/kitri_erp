<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<script type="text/javascript" src="http://gw.whoisdesk.kr/Src/WebCommon/Script/addTab.js"></script>

<div id="wrapper">
	<div id="page-wrapper">
		<h4>${memberInfo.emp_name}님 환영합니다.</h4>
		<img src="" style="width: 100%; height: 100%;">
	</div>
</div> 


<script language="javascript">
<!--
// 전자결재 >> 미결재 문서 보기
function openWinEWordView( DcsNo, No, WordType ) 
{
	var dateObj = new Date();
	var dummy = dateObj.getTime();

	if(WordType == 2) w = 1020;
	else w = 760;
	
	// 'view'+w
	window.open('../EWord/view.php?dummy='+dummy+'&DcsNo='+DcsNo+'&No='+No,'','top=0, left=0, width='+w+', height=720, menubar=yes, scrollbars=yes, status=yes, resizable=yes');
}
//-->
</script>
</div>
</div>
</body>
</html>

    