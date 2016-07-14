<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!-- jstl 1.2 version -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="util" value="${pageContext.request.contextPath}"/>

<script type = "text/javascript">
var root = "${root}";
var util = "${util}";

</script>


<!-- 부트스트랩 기본설정 -->
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="${root}/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${root}/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="${root}/dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${root}/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS 
    <link href="${root}/bower_components/morrisjs/morris.css" rel="stylesheet">
    -->

    <!-- Custom Fonts -->
    <link href="${root}/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
      <!-- jQuery -->
    <script src="${root}/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${root}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${root}/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript 
    <script src="${root}/bower_components/raphael/raphael-min.js"></script>
    <script src="${root}/bower_components/morrisjs/morris.min.js"></script>
    <script src="${root}/js/morris-data.js"></script>
	-->

    <!-- Custom Theme JavaScript -->
    <script src="${root}/dist/js/sb-admin-2.js"></script>
	<!-- ckeditor -->
	<script type="text/javascript" src="${root}/ckeditor/ckeditor.js"></script>
	
	<!-- whois css -->
	<link href="http://css.whoisdesk.net/Src/Skin/Renewal/common.css?dummy=20150702" rel="stylesheet" type="text/css" />
	<link href="http://css.whoisdesk.net/Src/Skin/Renewal/board.css?dummy=20120223" rel="stylesheet" type="text/css" />
	<link href="http://css.whoisdesk.net/Src/Skin/Renewal/subpage.css?dummy=20120223" rel="stylesheet" type="text/css" />
	<link href="http://css.whoisdesk.net/Src/Skin/Renewal/popup.css?dummy=20160525" rel="stylesheet" type="text/css" />
	<link type="text/css" href="http://css.whoisdesk.net/Src/WebCommon/Jquery/Jquery_ui_1_7_2/blitzer/jquery-ui-1.7.2.custom.css" rel="stylesheet" />

</head>
<body>