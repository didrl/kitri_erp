<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>       
<style rel="stylesheet">
body {
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #333333;
	background: #FFFFFF;
}

.loginUp {
	position: relative;
	margin: 50px auto;
	width: 280px;
	padding: 350px 25px 29px;
	background: #FFFFFF;
	border-bottom: 1px solid #FFFFFF;
	border-radius: 5px;
 
}



.loginUpTitle {
	margin: -25px -25px 25px;
	padding: 15px 25px;
	line-height: 35px;
	font-size: 26px;
	font-weight: 300;
	color: #777;
	text-align: center;
	text-shadow: 0 1px rgba(255, 255, 255, 0.75);
	background: #FFFFFF;
}


input {
	font-family: inherit;
	color: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.loginInput {
	width: 100%;
	height: 50px;
	margin-bottom: 25px;
	padding: 0 15px 2px;
	font-size: 17px;
	background: white;
	border: 2px solid #EBEBEB;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 -2px #EBEBEB;
	box-shadow: inset 0 -2px #EBEBEB;
}

.loginInput:focus {
	border-color: #62C2E4;
	outline: none;
	-webkit-box-shadow: inset 0 -2px #62C2E4;
	box-shadow: inset 0 -2px #62C2E4;
}

.lt-ie9 .loginInput {
	line-height: 48px;
}

.LoginButton {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 54px;
	padding: 0;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: #000000;
	border: 0;
	border-bottom: 2px solid #D76B60;
	border-radius: 5px;
	cursor: pointer;
	-webkit-box-shadow: inset 0 -2px #D76B60;
	box-shadow: inset 0 -2px #D76B60;
}

.LoginButton:active {
	top: 1px;
	outline: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

:-moz-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

::-moz-placeholder {
	color: #AAAAAA;
	opacity: 1;
	font-weight: 300;
}

::-webkit-input-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

:-ms-input-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

::-moz-focus-inner {
	border: 0;
	padding: 0;
}
</style>

<body>
<div id="wrapper">   
   <!-- Page Content -->
    <div id="page-wrapper">
       <div class="container">
			<form class="loginUp" id="loginUpForm" method="post" action="${root}/employee/login.erp">
		
			<input type="text" id="id" name="id" class="loginInput" placeholder="ID" autofocus
					required> <input type="password" id="password" name="password" class="loginInput"
					placeholder="PASSWORD" required> <input type="submit"
					value="Login" class="LoginButton">
			</form>
			<a href="${root}/proposal/viewDoc.erp?doc_id=1607-010034">기안서</a>
			<a href="${root}/btripApplication/viewDoc.erp?doc_id=1607-040046">출장신청서</a>
			<a href="${root}/btripReport/viewDoc.erp?doc_id=1607-050045">출장보고서</a>
       </div>
        <!-- /.container -->
     </div>
     <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->     
</body>
</html> 
