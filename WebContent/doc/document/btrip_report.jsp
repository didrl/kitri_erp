<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<%@ include file="/doc/doc_header.jsp" %>




         <!-- 기본형 휴가계/출장계 -->

      <tr class="change_height_on_print">
         <td id="eword_content" class="eword_content_layout">
            <table id="eword_special" class="eword_meta">
               <col class="eword_th_width">
               <col style="width:87.5%;">
                       
               <!-- 출장계 > 출장 보고서 -->
                  <tr class="eword_meta_height">
                     <th style="border-top: none; border-left: none;">기간</th>
                     <td class="pad15l" style="border-top: none;" >
                     <div class="input-daterange input-group" id="datepicker">
                         <input id="start_date" name="start_date" class="datepicker" type="text">&nbsp;~&nbsp;
                         <input id="end_date" name="end_date" class="datepicker" type="text">                    
                     </div>
                     </td>
                  </tr>
                  <tr class="eword_meta_height">
                     <th style="border-left: none;">출장지</th>
                     <td class="pad15l">
                         <input name="btrip_location" type="text" value="" style="width:98%;">
                     </td>
                  </tr>
                  <tr>
                     <th style="border-left: none;">출장보고</th>
                     <td class="pad15l pad5tb">
                           <textarea name="doc_content" id="doc_content" style="width:98%;height:50px;">&nbsp;</textarea>
                                 <script type="text/javascript">
                                       CKEDITOR.replace('doc_content');
                                 </script>
                     </td>
                  </tr>
                  <tr>
                     <th style="border-left: none;">출장여비</th>
                     <td>
                        <table id="expense_detail" class="eword_meta">
                           <col class="eword_th_width">
                           <col>
                           <col class="eword_th_width">
                           <col>
                           <tr class="eword_meta_height">
                              <th style="border-top: none; border-left: none;">일비</th>
                              <td class="pad15l" style="border-top: none;">
                                     <input name="expense_info_id" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
                                                                  원
                              </td>
                              <th style="border-top: none;">숙박비</th>
                              <td class="pad15l" style="border-top: none;">
                                     <input name="exp_room" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
                                                                  원
                              </td>
                           </tr>
                           <tr class="eword_meta_height">
                              <th style="border-left: none;">식비</th>
                              <td class="pad15l">
                                     <input name="exp_food" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
                                                                  원
                              </td>
                              <th>교통비</th>
                              <td class="pad15l">
                                     <input name="exp_trans" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
                                                                  원
                              </td>
                           </tr>
                           <tr class="eword_meta_height">
                              <th style="border-left: none;">기타비</th>
                              <td class="pad15l">
                                     <input name="exp_etc" type="text" value="" style="width:87%;" onkeypress="num_only3(event, 'int');" onkeyup='auto_comma2(event, this.form, this);' onblur='AutoExpenseCalculation();' >
                                                                  원
                              </td>
                              <th>합계</th>
                              <td class="pad15l">
                                     <input name="exp_total" type="text" value="" style="width:87%;" readonly>
                                                                  원
                              </td>
                           </tr>
                        </table>
                     </td>
                  </tr>
                  <tr style="height:100px;">
                     <td colspan="2" class="txt_ce"  style="border-left: none;">상기와 같이 출장 보고서를 제출하오니 재가바랍니다.</td>
                  </tr>
             </table>
         </td>
      </tr>
   </table>



<%@ include file="/doc/doc_footer.jsp" %>

