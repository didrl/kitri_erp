//�섏씠吏� �대룞
function PageGo(url)
{
   if(url)
   {
      location.href=url;
   }
}

//�덊럹�댁� �닿린(�꾩껜李�)
function PageOpen(url)
{
   window.open(url,'','top=0,left=0,width=800,height=600,toolbar=yes,menubar=yes,location=yes,scrollbars=yes,status=yes,resizable=yes,fullscreen=yes');
}

//�섏씠吏� �몄텧��(�꾩옄寃곗옱, )
function PageMove(v)
{
   if(v)
   {
      location.href="?PageSize="+v;
   }
}

//�꾩씠�뚮젅�� �믪씠 �먮룞(�낅Т�쇱� 罹섎┛��, )
function iframe_autoresize(arg) 
{
    arg.height = eval(arg.name+".document.body.scrollHeight");
}

//寃��됯���(�낅Т�쇱�, 臾몄꽌愿�由�)
function SearchChk()
{
   var f = document.SearchForm;
   if(f.SearchVal.value == '')
   {            
      alert('寃��됱뼱瑜� �낅젰�댁＜�몄슂.')
      f.SearchVal.focus();
      return false;
   }

   f.submit();
}

//泥댄겕諛뺤뒪 �꾩껜 �좏깮 諛� �꾩껜 �댁껜
function ChkReverse(form, name) 
{
  var i;
  var f = eval("document."+form);
  for(i = 0; i < f.elements.length; i++) 
  {
    if(f.elements[i].name == name)
   {
      f.elements[i].checked = !f.elements[i].checked;
    }
  }
}

//�뱀닔臾몄옄 留됯린
function SpecialCharNo()
{
   var lkeycode = window.event.keyCode;
   var sOrg = String.fromCharCode(lkeycode);
   noChar = /[\[\]`@\;\:+&\\=!#$%\-\_~*,.\{\}|/?><\'\"^]/;

   if( sOrg.match(noChar) )
   {
      window.event.keyCode = 0;
   }
}

function SpecialCharNo2()
{
   var objEv = event.srcElement;
   var num ="{}[]()<>?_|~`!@#$%^&*-+\"'\\/ ";
   event.returnValue = true;

   for (var i=0;i<objEv.value.length;i++)
   {
   if(-1 != num.indexOf(objEv.value.charAt(i)))
   event.returnValue = false;
   }

   if (!event.returnValue)
   {
      alert("�뱀닔臾몄옄�� �낅젰�섏떎 �� �놁뒿�덈떎.");
      objEv.value = '';
   }
}

//寃��� : 寃��됱뼱�� 蹂닿린, �④린湲�
function SearchField(val, num) 
{   
   if(val == '')
   {
      val = 'Nothing';
   }
   else 
   {
      val = 'Anything';
   }

   var d = $('Search_Field'+num);

   if (val == 'Nothing')
   {
      d.hide();
   } 
   else
   {
      d.show();
   }
}

// xml object create for AJAX response
function getXmlObject(text)
{
    if(window.ActiveXObject)
    {
        var xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
        xmlDoc.async=false;
        while(xmlDoc.readyState!=4) document.write('Loading...');
    }
    else if(document.implementation&&document.implementation.createDocument)
        xmlDoc=document.implementation.createDocument("","doc",null);

    xmlDoc.loadXML(text);

    if(xmlDoc.readyState!=4)
        return false;

    return xmlDoc;
}

//�꾩씠�� �뺤떇 泥댄겕�섍린
function IPChecker(ipStr)
{
   var i;
   var pointCnt = 0;
   var partStr = "";
 
   // IP 7湲��� 誘몃쭔 FALSE
   if(ipStr.length < 7) 
   {
      return false;
   }
 
   for(i=0; i<ipStr.length; i++)
   {
      // .�� �꾨땲硫�
      if(ipStr.charAt(i) != '.')
      {
         // �쒓��먯뵫 ����
         partStr += ipStr.charAt(i);
      
         // �쒓��먯씤 寃쎌슦 0怨� 9 �ъ씠媛� �꾨땲硫� FALSE
         if(partStr.length == 1)
         {
            if(partStr < '0' || partStr > '9')
            {
               return false;
            }
         }
      
         // �쒓��먮��� 3湲��먭퉴吏� 0怨� 255 �ъ씠媛� �꾨땲硫� FALSE
         if(partStr < 0 || partStr > 255)
         {
            return false;
         }
      } 
      else
      {
         // 泥ル쾲吏� .�� �ㅻ㈃ FALSE
         if(i == 0)
         {
            return false;
         }

         pointCnt++;

         // 以묎컙�� .�� �ㅻ㈃ 臾몄옄�� 珥덇린��
         partStr = "";
      }
   }
 
   // .�� 3媛� �댁긽�덉쑝硫� FALSE
   if(pointCnt != 3)
   {
      return false;
   }
  
   return true;
}

// �レ옄留� �낅젰
function num_only2(fform) 
{   
   if ((event.keyCode > 47) && (event.keyCode < 58)) 
   {
      event.returnValue=true;
   }
   else 
   {
      event.returnValue =false;
      fform.focus();
   }   
}

/**
 * keypress �대깽�몄떆 �대떦 type�� �꾨땶 character input�� filter
 * @param event
 * @param type
 */
function num_only3(event, type) {
   var keyCode;
   if ( typeof window.event != 'undefined' ) {
      keyCode = window.event.keyCode;
   } else if ( typeof event.which != 'undefined' ) {
      keyCode = event.which;
   } else {
      keyCode = event.keyCode;
   }

   var isCombi = false;
   if ( typeof window.event != 'undefined' ) {
      isCombi = window.event.ctrlKey || window.event.altKey || window.event.metaKey;
   } else {
      isCombi = event.ctrlKey || event.altKey || event.metaKey;
   }
   
   var char = String.fromCharCode(keyCode);
   var regWordSpecial = new RegExp(/[\w\s`~!@#$%^&*()_=+\\|\[{\]};:'",<>\/?]/).test(char);
   var regDot = new RegExp(/[.]/).test(char);
   var regNotDigit = new RegExp(/[\D]/).test(char);
   var isBlocked = false;
   switch ( type ) {
   case 'float' :
      isBlocked = regWordSpecial && regNotDigit && !isCombi;
      break;
   case 'int' :
      isBlocked = (regWordSpecial || regDot) && regNotDigit && !isCombi;
      break;
   }
   if ( isBlocked ) {
      if ( window.event ) {
         window.event.returnValue = false;
      } else if ( event.preventDefault ) {
         event.preventDefault();
      }
   }
}

function in_array( needle, haystack ) {
    var length = haystack.length;
    for(var i = 0; i < length; i++) {
        if(haystack[i] == needle) return true;
    }
    return false;
}

/**
 * deprecated
 */
function auto_comma1(x) {
   return add_comma2(x);
}

/**
 * onkeyup �대깽�몄떆 input媛믪쓣 number format, filter 泥섎━�� float string�쇰줈 蹂���
 * @param event
 * @param frm
 * @param val
 */
function auto_comma2(event, frm, val) {
   var keyCode =  window.event ? window.event.keyCode : event.keyCode;
   // onkeyup�� �� input媛믪쓣 蹂��붿떆�ㅻ뒗 non-alphanumeric keycode list
   var keyCodeFilter = [
      8,      // backspace
      13,      // enter
      32,      // space bar
      35,      // end
      46,      // delete
      106,   // multiply(*)
      107,   // add(+)
      109,   // subtract(-)
      110,   // decimal point(.)
      111,   // devide(/)
      186,   // ;
      187,   // =
      188,   // ,
      189,   // dash(-)
      190,   // period(.)
      191,   // slash(/)
      192,   // apostrophe(`)
      219,   // [
      220,   // \
      221,   // ]
      222      // single quote(')
   ];
   if ( ((keyCode>=48) && (keyCode <= 105)) || in_array(keyCode, keyCodeFilter) ) {
      // input媛믪씠 蹂��섎뒗 key媛� �뚮┝ : 0~9, a~z, numpad0~numpad9, filter�� �깅줉�� 媛�
      // 肄ㅻ쭏�쎌엯, 鍮꾩젙�곸쟻�� input �꾪꽣
      var ret = add_comma2(getFloatString(val.value));
      val.value = ret;
   }
}

/**
 * deprecated
 */
function get_number2(val) {
   if(val == '' || val == "0")
      return 0;

   var str = ""+val;
   var temp = "";
   var num = "";
   var dot_flag = false;
   var minus_flag = false;
   for(var i=0; i<str.length; i++) 
   {
      temp = str.charAt(i);
      if (i == 0 && temp == ".") 
      {
         num = "0.";
         dot_flag = true;
      } 
      else if (i == 1 && temp == "." && str.charAt(0) == "-")
      {
         num = "0.";
         dot_flag = true;
      }
      else if (temp >= "0" && temp <= "9")  
      {
         num += temp;
      } 
      else if (temp == "." && dot_flag == false) 
      {
         num += temp;
         dot_flag = true;
      }
      else if (temp == "-")
      {
         minus_flag = true;
      }
   }
   
   if ( (num != null) && (num != "") && (num != "0") ) {
      if(dot_flag == false && parseFloat(num) == 0) return "0";
      if(dot_flag == false && num.length > 1 && num.charAt(0) == "0"){
         num = num.substring(1, num.length);
      }
      if(minus_flag) num = "-"+num;

      if(str.charAt(str.length-1) == '.') return num;      // �レ옄 留덉�留� 臾몄옄媛� '.' �� 寃쎌슦 �レ옄�뺤쑝濡� 諛섑솚�섎㈃ '.'�� �앸왂�섏뼱 諛섑솚�섍린�뚮Ц�� 臾몄옄�뺤쑝濡� 諛섑솚
      else return parseFloat(num); //�レ옄�뺤쑝濡� 蹂��섑븯�� 由ы꽩
      //return num;
   } else {
      if(str == '-') return '-';
      else if(str == '-0') return '-0';
      else return "0";
   }
}

/**
 * input�� key �낅젰�� 諛쒖깮�� �뚮쭏�� float媛� �뺤떇�� 留욌룄濡� filter
 * @param val
 * @returns
 */
function getFloatString( val ) {
   var ret = '';
   if ( val == '' || val == '0' || val == 0 ) {
      ret = val;
   } else {
      var int = '';      // integer part of result number
      var frc = '';      // fraction part of result number
      var dot = false;   // if val is dotted
      var neg = false;   // if val is negative
      var t = val.split('');   // array of each input character of val
      for ( var i in t )
         switch ( t[i] ) {
         case '.' : dot = true; break;
         case '-' : neg = true; break;
         case ' ' : break;
         default :
            // digit
            if ( !isNaN(t[i]) )
               if ( dot ) 
                  frc+= t[i];
               else
                  // leading 0 is not allowed for integer part
                  int+= ( t[i] == 0 && !int ) ? '' : t[i];
         }
      if ( neg && !int && !dot && !frc ) {
         ret = '-';
      } else {
         ret = (neg ? '-' : '') + (int ? int : '0') + (dot ? '.' : '') + frc;
      }
   }
   return ret;
}

/**
 * �낅젰�� �앸궃 input�먯꽌 怨꾩궛 媛��ν븳 float媛� 媛��몄삤湲�
 * @param val
 * @returns
 */
function getFloat( val ) {
   var ret = val == '' ? 0 : parseFloat(getFloatString(val)); 
   return ret;
}

/**
 * float �낅젰�� comma �쎌엯
 * @param val
 * @returns {String}
 */
function add_comma2( val ) {
   var ret = '';
   var arrNumber = ('' + val).split('.');
   arrNumber[0] += '.';
   var rxSplit = new RegExp('([0-9])([0-9][0-9][0-9][,.])');
   do {
      arrNumber[0] = arrNumber[0].replace(rxSplit, '$1,$2');
   } while (rxSplit.test(arrNumber[0]));
   if (arrNumber.length > 1) {
      ret = arrNumber.join('');
   } else {
      ret = arrNumber[0].split('.')[0];
   } 
   return ret;
}

/**
 * 怨꾩궛 寃곌낵 �뚯닔�� 2吏� �먮━ �댄썑 踰꾨┝
 * @param num
 * @param len
 * @returns
 */
function sosuzum(num, len) {
   var strNum = String(num);
   var i = strNum.indexOf(".");

   if (!len ) len = 2;
   if ( isNaN(num) ) return 0;
   if ( !isFinite(num) ) return 0;

   if ( i == -1 ) {
      return parseFloat(Math.round(strNum));
   } else {
      var num1 = strNum.split(".")[0];
      var num2 = strNum.split(".")[1];

      if ( len > num2.length ) {
         return parseFloat(strNum);
      } else {
         var fixNum = parseFloat(num).toFixed(len);
         
         if ( String(fixNum).split(".")[1].substring(0,2) == "00" ) {
            return parseFloat(String(fixNum).split(".")[0]);
         } else { 
            return parseFloat(fixNum);
         }
      }
   }
}
// �먮룞 Comma END

function replace(str, original, replacement) 
{ 
    var result; 
    result = ""; 
    while(str.indexOf(original) != -1) 
    { 
        if (str.indexOf(original) > 0) 
            result = result + str.substring(0, str.indexOf(original)) + replacement; 
        else 
            result = result + replacement; 
            str = str.substring(str.indexOf(original) + original.length, str.length); 
    } 
    return result + str; 
} 

//�덉씠�� 寃쎄퀬李� - msg : 寃쎄퀬臾멸뎄, type : alert, confirm, func1 : 泥ル쾲吏� 踰꾪듉 �곸슜 �⑥닔, func2 : �먮쾲吏� 踰꾪듉 �곸슜 �⑥닔
function LayerAlert(msg, type, func1, func2)
{
   var dateObj = new Date();
   var dummy = dateObj.getTime();

   if(typeof type == "undefined") type = "alert";
   if(typeof func1 == "undefined") func1 = "parent.LayerAlertClose()";

   if(document.body == null){
      jQuery(document).html('<body />');
   }

   jQuery("#lightAlertPop").remove();
   jQuery("#fadeAlertPop").remove();

   var scrollH = jQuery('body').height();

   var light = '<div id="lightAlertPop" name="lightPop" style="display: none;position: absolute;top: 0px;left: 0px;width: 100%;height: 100%;z-index:1002;overflow: hidden;">';
   light += '      <table width="100%" height="100%" border="0">';
   light += '         <tr>';
   light += '            <td align="center" valign="middle">';
   light += '               <iframe id="iframeAlertPopup" style="width:0;height:0;" name="iframeAlertPopup" frameborder="0" marginwidth="0" marginheight="0" scrolling ="no" allowtransparency="true"></iframe>';
   light += '            </td>';
   light += '         </tr>';
   light += '      </table>';
   light += '   </div>';

   jQuery("body").append(light);

   var fade = '<div id="fadeAlertPop" style="display: none;position: absolute;top: 0;left: 0;width: 100%;min-height: 100%;height: '+scrollH+'px;background-color: #000000;z-index:1001;-moz-opacity: 0.1;opacity:.10;filter: alpha(opacity=10);"></div>';

   jQuery("body").append(fade);

   var url = '/Src/Etc/Alert.php?msg='+encodeURIComponent(msg)+'&dummy='+dummy+'&type='+type+'&func1='+encodeURIComponent(func1)+'&func2='+encodeURIComponent(func2);

   jQuery('#iframeAlertPopup').attr('src',url);

   jQuery('#lightAlertPop').show();
   jQuery('#fadeAlertPop').show();
}

function LayerAlertClose() 
{
   jQuery(document).find("#lightAlertPop").remove();
   jQuery(document).find("#fadeAlertPop").remove();
}

// 泥⑤��뚯씪 �� �앹꽦
function previewFileUpload(obj) {
   jQuery("#tmpAttachList, #tmpAttachOrgList, #tmpAttachFile, #iframeTmpAttach").remove();

   var btnWid = 95;
   var btnHei = 19;

   // 泥⑤��뚯씪 select
   var listTag = jQuery("<select name='attachList[]' id='tmpAttachList' />")
      .css({"border":"1px solid #97AABB", "width":"100%", "height":"70px", "margin-bottom" : "5px"})
      .attr({"multiple":true})
      .bind("keydown", function(e){
         e.preventDefault();
         if(e.keyCode == 46) delPreviewFile();   // delete key event
      });
   
   // 泥⑤��뚯씪 �쒓�紐� select(hidden)
   var listOrgTag = jQuery("<select name='attachOrgList[]' id='tmpAttachOrgList' />")
      .attr({"multiple":true})
      .hide();
   
   // 泥⑤��뚯씪 踰꾪듉 wrap
   var attachDivWrap = jQuery("<div />")
      .css({"float":"left", "overflow":"hidden", "width":btnWid+"px", "height":btnHei+"px", "cursor":"pointer"});
   var attachDiv = jQuery("<div />")
      .css({"position":"absolute", "width":btnWid+"px", "height":btnHei+"px", "overflow":"hidden", "cursor":"pointer"});
   
   // 泥⑤��뚯씪 踰꾪듉 �대�吏�
   var attachBtn = jQuery("<div />")
      .css({ "width":btnWid+"px", "height":btnHei+"px","background":"url(/Src/Img/Renewal/gwv2_btn_find.gif) no-repeat 0px 0px", "cursor":"pointer"});
   
   // 泥⑤��뚯씪 踰꾪듉(transparent)
   var inputFileTag = jQuery("<input id='tmpAttachFile' name='tmpAttachFile' type='file' />")
      .css({"opacity":"0", "filter":"alpha(opacity=0)", "position":"absolute", "top":"0", "right":"0", "font-size":"15pt", "cursor":"pointer"});
   
   // 泥⑤��뚯씪 ��젣 �꾩씠肄�
   var delFileDiv = jQuery("<div />")
      .css({"float":"left", "margin-left":"5px"})
      .html("<span class='btn_page'><a href='#blank_link' class='cursor'><span>��젣</span></a></span>")
      .bind("click", function(){
         delPreviewFile();   // delete key event
      });

   jQuery(attachDiv).append(attachBtn).append(inputFileTag);
   jQuery(attachDivWrap).append(attachDiv);

   // Form Object
   var formObj = jQuery("#"+obj).parents().find("form").eq(0);
   // Form enctype
   var enctype = jQuery(formObj).attr("enctype");

   // 泥⑤��뚯씪 submit target iframe
   var iframeObj = jQuery("<iframe id='iframeTmpAttach' name='iframeTmpAttach' />")
      .css({"width":"0", "height":"0", "border":"0"})
      .hide();
   jQuery("body").append(iframeObj);

   var formAction = jQuery(formObj).attr("action");
   var fileAction = "../Etc/tmpUpload.php";

   // 泥⑤��뚯씪 �좏깮 �� change event
   jQuery(inputFileTag).change(function(){
      if(enctype != "multipart/form-data") {
         LayerAlert("form enctype error!!(multipart/form-data)");
         return false;
      }
      jQuery(iframeObj).attr("src", fileAction);
      jQuery(formObj).attr({"target":"iframeTmpAttach", "action":fileAction}).submit();
      jQuery(formObj).attr({"target":"", "action":formAction});
   });
   jQuery("#"+obj).append(listTag).append(listOrgTag).append("<br>").append(attachDivWrap).append(delFileDiv);

   // Form Submit Event(泥⑤��뚯씪 select �쒓렇 selected 泥섎━)
   jQuery(formObj).bind("submit", function() {
      if(jQuery("option","#tmpAttachList").length > 0) {
         jQuery("option","#tmpAttachList").each(function() {
            jQuery(this).attr("selected", true)
         });
      }
      if(jQuery("option","#tmpAttachOrgList").length > 0) {
         jQuery("option","#tmpAttachOrgList").each(function() {
            jQuery(this).attr("selected", true)
         });
      }

      return true;
   });
}

// 泥⑤��뚯씪 change event �� �곕Ⅸ return 泥섎━
function setPreviewFile(info) {
   if(jQuery.trim(info) != '') {
      var infoObj = jQuery.parseJSON(info);
      var parentObj = jQuery("#tmpAttachList").parent();
      var opt = jQuery("<option />").val(infoObj.fname).text(infoObj.oname + "(" + infoObj.fsize + ")");
      var optOrg = jQuery("<option />").val(infoObj.oname).text("");
      jQuery("#tmpAttachList", parentObj).append(opt);
      jQuery("#tmpAttachOrgList", parentObj).append(optOrg);
      jQuery("option","#tmpAttachList").each(function() {
         if ( jQuery(this).attr('selected') ) {
            jQuery(this).attr("selected", false)
         }
      });
      jQuery("#iframeTmpAttach").attr("src", "");
   }
}

// 泥⑤��뚯씪 ��젣 泥섎━
function delPreviewFile() {
   if(jQuery("option:selected", "#tmpAttachList").length <= 0) {
      LayerAlert("�뚯씪�� �좏깮�� 二쇱꽭��.");
      return;
   }

   var delFileIndex = 0;
   var delFileValue = "";

   jQuery("option:selected", "#tmpAttachList").each(function(){
      delFileIndex = jQuery(this).index("#tmpAttachList option");
      delFileValue = jQuery(this).val();

      jQuery(this).remove();
      jQuery("option", "#tmpAttachOrgList").eq(delFileIndex).remove();

      jQuery.post("../Etc/tmpUpload.php",{processType:"tmpFileDel", delTmpFile:delFileValue},function(data){});
   });
}

// �섏젙�섏씠吏� 泥⑤��뚯씪 set
function previewFileSet(file, filename, size) {
   var fileObj = '{"fname":"'+(file.replace(/"/g, '\\"'))+'","oname":"'+(filename.replace(/"/g, '\\"'))+'","fsize":"'+size+'"}';
   setPreviewFile(fileObj);
}