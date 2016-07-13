<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<script type="text/javascript" src="http://gw.whoisdesk.kr/Src/WebCommon/Script/addTab.js"></script>
<div id="wrapper">
<div id="page-wrapper">
<div id="sub">
    <!--  검색 버튼 영역 --> 
    <div id="title"> 
        <h2><span class="appr">전자결재 메인</span></h2> 
    </div>
	<div class="under"></div> 
    <!--  //검색 버튼 영역 --> 
	<div class="pad10">
    <!--전자결재 컨텐츠 -->
	 <table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
    <tr>
        <td>
			<div>
				<nobr>
					<h4 class="mar5b">결재할 문서함</h4>
				</nobr>
			</div>
		</td>
        <td width="15" rowspan="2">&nbsp;</td>
        <td>
			<div>
				<nobr>		
					<h4>개인 문서함</h4>
				</nobr>
			</div>
		</td>
        <td width="15" rowspan="2">&nbsp;</td>
        <td>
			<div>
				<nobr>
					<h4>협조 문서함</h4>
				</nobr>
			</div>
		</td>
        <td width="15" rowspan="2">&nbsp;</td>
        <td>
			<div>
				<nobr>
					<h4 class="mar5b">부서/참조 수신함</h4>
				</nobr>
			</div>
		</td>
    </tr>
    <tr style="vertical-align:top;">
        <td>
		<div class="table_view">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
            <thead>
			<tr>
                <th>
					<div>
						<nobr>
							미결재
						</nobr>
					</div>
				</th>
                <td>
					<div class="bold">
						<nobr>
							<a class="cursor" onclick="javascript:subTabActive('', '3-10-00', '미결재 문서', '../EWord/orderList.php?dummy=1467712452&gubun=1');">
							<!-- 결제할 문서함/미결재 건수 -->
							</a>
						</nobr>
					</div>
				</td>
            </tr>
			</thead>
			<tbody>
            <tr>
                <th>
					<div>
						<nobr>
							결재완료
						</nobr>
					</div>							
				</th>
                <td>
					<div class="bold">
						<nobr>
							<a class="cursor" onclick="javascript:subTabActive('', '3-10-05', '결재완료 문서', '../EWord/orderList.php?dummy=1467712452&gubun=2');">
							<!-- 결제할 문서함/결재완료 건수 -->
							</a>
						</nobr>
					</div>					
				</td>
            </tr>
			</tbody>
        </table>
		</div>
		</td>
        <td>
		<div class="table_view">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
            <thead>
			<tr>
                <th>
					<div>
						<nobr>
							상신문서
						</nobr>
					</div>								
				</th>
                <td>
					<div>
						<nobr>
							<a class="cursor" onclick="javascript:subTabActive('', '3-15-00', '상신문서', '../EWord/?dummy=1467712452&gubun=1');">
							<!-- 개인 문서함/상신문서 건수 -->
							</a>
						</nobr>
					</div>																
				</td>
                <th>
					<div>
						<nobr>
							반려문서
						</nobr>
					</div>								
				</th>
                <td>
					<div>
						<nobr>
							<a class="cursor" onclick="javascript:subTabActive('', '3-15-10', '반려문서', '../EWord/?dummy=1467712452&gubun=3');">
							<!-- 개인 문서함/반려문서 건수 -->
							</a>
						</nobr>
					</div>
				</td>
            </tr>
			</thead>
			<tbody>
            <tr>
                <th>
					<div>
						<nobr>				
							임시저장
							
						</nobr>
					</div>
				</th>
                <td>
					<div>
						<nobr>
							<a class="cursor" onclick="javascript:subTabActive('', '3-15-05', '임시저장', '../EWord/?dummy=1467712452&gubun=2');">
							<!-- 개인 문서함/임시저장 건수 -->
							</a>
						</nobr>
					</div>							
				</td>
                <th>
					<div>
						<nobr>
							결재완료
						</nobr>
					</div>
				</th>
                <td>
					<div class="bold">
						<nobr>			
							<a class="cursor" onclick="javascript:subTabActive('', '3-15-15', '결재완료', '../EWord/?dummy=1467712452&gubun=4');">
							<!-- 개인 문서함/결재완료 건수 -->
							</a>
						</nobr>
					</div>
				</td>
            </tr>
            <tr>
            	<!-- 상신취소 -->
                <th>
					<div>
						<nobr>				
							상신취소
						</nobr>
					</div>
				</th>
                <td>
					<div>
						<nobr>
							<a class="cursor" onclick="javascript:subTabActive('', '3-15-20', '상신취소', '../EWord/?dummy=1467712452&gubun=5');">
							<!-- 개인 문서함/상신취소 건수 -->
							</a>
						</nobr>
					</div>							
				</td>
                <td colspan="2"></td>
            </tr>
			</tbody>
        </table>
		</div>		
		
		</td>
        <td>
		<div class="table_view">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
            <thead>
			<tr>
                <th>
					<div>
						<nobr>
							미결재
						</nobr>
					</div>							
				</th>
                <td>
					<div>
						<nobr>
							<a class="cursor" onclick="javascript:subTabActive('', '3-20-00', '미결재 문서', '../EWord/orderList.php?dummy=1467712452&gubun=3');">
							<!-- 협조 문서함/미결재 건수 -->
							</a>
						</nobr>
					</div>							
				</td>
            </tr>
			</thead>
			<tbody>
            <tr>
                <th>
					<div>
						<nobr>
							결재완료
						</nobr>
					</div>							
				</th>
                <td>
					<div>
						<nobr>			
							<a class="cursor" onclick="javascript:subTabActive('', '3-20-05', '결재완료 문서', '../EWord/orderList.php?dummy=1467712452&gubun=4');">
							<!-- 협조 문서함/결재완료 건수 -->
							</a>
						</nobr>
					</div>						
				</td>
            </tr>
			</tbody>
        </table>
		</div>		</td>
        <td>
		<div class="table_view">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
            <thead>
			<tr>
                <th>
					<div>
						<nobr>
							부서 수신함
						</nobr>
					</div>							
				</th>
                <td>
					<div>
						<nobr>				
							<a class="cursor" onclick="javascript:subTabActive('', '3-25', '부서 수신함', '../EWord/receiveTreeKey.php?dummy=1467712452');">
							<!-- 부서참조 수신함/부서수신 건수 -->
							</a>
						</nobr>
					</div>
				</td>
            </tr>
			</thead>
			<tbody>
            <tr>
                <th>
					<div>
						<nobr>
							참조 수신함
						</nobr>
					</div>
				</th>
                <td>
					<div>
						<nobr>
							<a class="cursor" onclick="javascript:subTabActive('', '3-30', '참조 수신함', '../EWord/referenceUser.php?dummy=1467712452');">
							<!-- 부서참조 수신함/참조수신 건수 -->
							</a>
						</nobr>
					</div>
				</td>
            </tr>
			</tbody>
        </table>
		</div>
		</td>
    </tr>
</table>

<!-- 결재할 문서함 > 미결재 문서 -->
<h4  class="mar5b left">결재할 문서함 &gt; 미결재 문서</h4>
<span class="right">
	<a class="cursor" onclick="subTabActive('', '3-10-00', '미결재 문서', '../EWord/orderList.php?dummy=1467712452&gubun=1');" onfocus='this.blur();'>
		<img src="http://static.whoisdesk.net/Src/Img/Renewal/btn_more.gif" class="pad10t mar5t mar5r" />
	</a>
</span>
<div class="table2  clear">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
	    <thead>
			<tr>
		        <th class="nobr text_overf" style="color:#666;">문서번호</th>
		        <th class="nobr text_overf" style="color:#666;">기안일자</th>
		        <th class="nobr text_overf" style="color:#666;">문서명</th>
		        <th class="nobr text_overf" style="color:#666;">기안자</th>
		        <th class="nobr text_overf" style="color:#666;">나의결재</th>
		        <th class="nobr text_overf" style="color:#666;">상태</th>
		        <th class="nobr text_overf" style="color:#666;">다음결재자</th>
		        <th class="nobr text_overf" style="color:#666;">의견 </th>
		    </tr>
		</thead>
		<tbody>
												<tr>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce">
							<a class="cursor" onclick="openWinEWordView( 1, 17, 1 );"></a>
						</td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf bdr_none txt_ce"></td>
					</tr>
																<tr>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce">
							<a class="cursor" onclick="openWinEWordView( 1, 16, 1 );"></a>
						</td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf bdr_none txt_ce"></td>
					</tr>
																<tr>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce">
							<a class="cursor" onclick="openWinEWordView( 3, 16, 1 );"></a>
						</td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf txt_ce"></td>
						<td class="nobr text_overf bdr_none txt_ce"></td>
					</tr>
									</tbody>
	</table>
</div>


<h4  class="mar5b left">개인 문서함 &gt; 상신문서</h4><span class="right"><a class="cursor" onclick="javascript:subTabActive('', '3-15-00', '상신문서', '../EWord/?dummy=1467712452&gubun=1');" onfocus='this.blur();'><img src="http://static.whoisdesk.net/Src/Img/Renewal/btn_more.gif" class="pad10t mar5t mar5r" /></a></span>
<div class="table2 clear">
<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
    <thead>
	<tr>
        <th><div><nobr>문서번호</nobr></div></th>
        <th><div><nobr>기안일자</nobr></div></th>
        <th><div><nobr>문서명</nobr></div></th>
        <th><div><nobr>상태</nobr></div></th>
        <th><div><nobr>의견 </nobr></div></th>
    </tr>
	</thead>
	<tbody>

	
		<tr>
			<td colspan='5' class="bdr_none txt_ce">
				<div>
					<nobr>
						해당 문서 정보가 없습니다.
					</nobr>
				</div>
			</td>
		</tr>

		


	 

				<tr>
			<td colspan='5' class="bdr_none">
				<div>
					<nobr>
						&nbsp;
					</nobr>
				</div>
			</td>
		</tr>
				<tr>
			<td colspan='5' class="bdr_none">
				<div>
					<nobr>
						&nbsp;
					</nobr>
				</div>
			</td>
		</tr>
		
	
	</tbody>
</table>
</div>

<!-- 협조 문서함 > 미결재 문서 -->
<h4  class="mar5b left">협조 문서함 &gt; 미결재 문서</h4>
<span class="right">
	<a class="cursor" onclick="subTabActive('', '3-20-00', '미결재 문서', '../EWord/orderList.php?dummy=1467712452&gubun=3');" onfocus='this.blur();'>
		<img src="http://static.whoisdesk.net/Src/Img/Renewal/btn_more.gif" class="pad10t mar5t mar5r" />
	</a>
</span>

<div class="table2 clear">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
	    <thead>
			<tr>
		        <th class="nobr text_overf" style="color:#666;">문서번호</th>
		        <th class="nobr text_overf" style="color:#666;">기안일자</th>
		        <th class="nobr text_overf" style="color:#666;">문서명</th>
		        <th class="nobr text_overf" style="color:#666;">기안자</th>
		        <th class="nobr text_overf" style="color:#666;">나의결재</th>
		        <th class="nobr text_overf" style="color:#666;">상태</th>
		        <th class="nobr text_overf" style="color:#666;">다음결재자</th>
		        <th class="nobr text_overf" style="color:#666;">의견 </th>
		    </tr>
		</thead>
		<tbody>
																		<tr>
							<td colspan='8' class="bdr_none txt_ce">해당 문서 정보가 없습니다.</td>
						</tr>
																											<tr>
							<td colspan='8' class="bdr_none txt_ce">&nbsp;</td>
						</tr>
																											<tr>
							<td colspan='8' class="bdr_none txt_ce">&nbsp;</td>
						</tr>
														</tbody>
	</table>
</div>

<h4 class="mar5b"> 전자결재 문서함 설명</h4>
<div class="table_view">
<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="table_layout">
	
	<col width="20%" class="overf"></col>
	<col width="80%" class="overf"></col>

    <thead>
	<tr>
	    <th rowspan="2">
			<div>
				<nobr>
					<span  class="bold normal">결재할 문서함 </span>
				</nobr>
			</div>
		</th>
	    <td>
			<div>
				<nobr>		
					<span class="bold org ">미결재 문서 |</span>  내가 결재할 문서 중에 결재하지 않은 문서입니다.  
				</nobr>
			</div>					
		</td>
	</tr>
	<tr>
        <td style="border-top:none;">
			<div>
				<nobr>		
					<span class="bold org">결재완료 문서 |</span>  내가 결재할 문서 중 결재한 문서입니다.  
				</nobr>
			</div>					
		</td>
	</tr>
	</thead>
	<tbody>
    <tr>
        <th rowspan="5">
			<div>
				<nobr>       		
					<span  class="bold normal">개인 문서함 </span>
				</nobr>
			</div>
		</th>
        <td>
			<div>
				<nobr>
					<span class="bold blue">상신문서 |</span>  결재를 올린 문서 중 아직 진행중인 문서입니다. (결재/보류/기각/결재완료가 안된 문서)   
				</nobr>
			</div>					
		</td>
    </tr>
    <tr>
        <td>
			<div>
				<nobr>
					<span class="bold blue">임시저장 | </span> 문서를 작성한 후 상신을 하지 않고, [임시저장하기] 버튼을 눌러 임시 저장한 문서입니다.  
				</nobr>
			</div>
		</td>
    </tr>
    <tr>
        <td>
			<div>
				<nobr>
					<span class="bold blue">반려문서 | </span> 상신한 문서 중에 결재자가 보류/기각한 문서입니다. 
				</nobr>
			</div>
		</td>
    </tr>
    <tr>
        <td>
			<div>
				<nobr>	
					<span class="bold blue">결재완료 | </span> 상신한 문서 중에서 결재자가 결재/전결한 문서입니다.  
				</nobr>
			</div>
		</td>
	</tr>
    <tr>
        <td>
			<div>
				<nobr>	
					<span class="bold blue">상신취소 | </span> 상신한 문서 중에서 기안자가 상신을 취소한 문서입니다.  
				</nobr>
			</div>
		</td>
	</tr>
    <tr>
        <th rowspan="2"> 
			<div>
				<nobr>
					<span  class="bold normal">협조 문서함</span>
				</nobr>
			</div>
		</th>
        <td>
			<div>
				<nobr>		
					<span class="bold org">미결재 문서 | </span> 본인이 협조 결재라인에 들어가 있으며, 아직 협조란에 결재를 하지 않은 상태입니다. 
				</nobr>
			</div>
		</td>
    </tr>
    <tr>
        <td>
			<div>
				<nobr>
					<span class="bold org">결재완료 문서 | </span> 본인이 협조 결재라인에 들어가 있으며, 협조란에 결재를 완료한 상태입니다.  
				</nobr>
			</div>					
		</td>
	</tr>
    <tr>
        <th>
			<div>
				<nobr>       
					<span  class="bold normal">부서 수신함 </span> 
				</nobr>
			</div>
		</th>
        <td>
			<div>
				<nobr>
					부서 수신함은 기안자가 수신부서를 선택하고, 결재가 완료되었을 경우 해당 결재문서를 부서 수신함에서 볼 수 있습니다.
				</nobr>
			</div>
		</td>
        </tr>
    <tr>
        <th>
			<div>
				<nobr>
					<span  class="bold normal">참조 수신함 </span> 
				</nobr>
			</div>
		</th>
        <td>
			<div>
				<nobr>
					참조 수신함은 기안자가 참조자를 선택하고, 결재가 완료되었을 경우 해당 결재문서를 참조 수신함에서 볼 수 있습니다. 
				</nobr>
			</div>
		</td>
    </tr>
	</tbody>
</table>
</div>
    <!-- //전자결재 컨텐츠 --> 
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

    