<#--定义dataBinding-->
<#assign dataBind = "com.exedosoft.plat.template.BindData2FormModel"?new()/>  
<#assign i18n = "com.exedosoft.plat.template.TPLI18n"?new()> 

<#--定义宏 判断输出什么类型的align-->
<#macro JudgeAlign item>
		   <#if item.align?exists>
		    	align='${item.align}'
		   <#else>
		        align='center' 
		   </#if>
</#macro>

<div id="PM_DO_BO_Property_DBManager"  style="overflow:auto;width:100%;height:100%;">
 	    
	<br/>
 

<form  method='post' id='a402880242a65aabd012a65aabd0a0000' name ='a402880242a65aabd012a65aabd0a0000'>


<div width="100%" height="100%">
	 <div style="margin:0px 0px 0px 5px;border-top:1px solid #8db2e3;border-left:1px solid #8db2e3;border-right:1px solid #8db2e3;align:left;text-align:left;vertical-align: middle;background-color:#e6EEEE;width:98%;height:25px" >
			
		 					<img src='/${webmodule}/exedo/webv3/images/MyRightArrow.jpg'/> <b>  ${i18n('数据表结构')} </b> 
		
	 </div>
	<DIV class="toolbar" style="BORDER-RIGHT: #8db2e3 1px solid; BORDER-TOP: #8db2e3 1px solid; BORDER-LEFT: #8db2e3 1px solid; BORDER-BOTTOM: #8db2e3 1px solid">
		<DIV align="left"><!--布局用-->
			<TABLE>
				<TBODY>
					<TR>
						<TD style="WIDTH: 2px"></TD><!--左缩进-->

							<TD>
								<TABLE  cellSpacing='0' cellPadding='0'>
									<TBODY>
										<TR>
											<TD class="b_left"></TD>
											<TD class="b_center"><button  type="button" id="402880242a65aabd012a65aac8c2000a"  style=""  class='new' >${i18n('新增')} </button>
<script>
  var globali = 2;
  $('#402880242a65aabd012a65aac8c2000a').bind('click',function(){
      var o = $('#tr0').clone();
      o.css("display","")
      o.attr("id","tr" + globali++);
      o.bind('click',function(){
			$('#g402880242a65aabd012a65aabd0a0000 tbody  tr.selected').removeClass("selected");//去掉原来的选中selected
			$(this).addClass("selected");
		});
	  $('#g402880242a65aabd012a65aabd0a0000').append(o);
	   
  });
</script></TD>
											<TD class="b_right"></TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
							<TD><SPAN class="spacer"></SPAN></TD><!--分隔条-->
							<TD>
								<TABLE  cellSpacing='0' cellPadding='0'>
									<TBODY>
										<TR>
											<TD class="b_left"></TD>
											<TD class="b_center"> 
 <button type="button" style=""   id='402880242a65aabd012a65aac95f000b' class='delete'> ${i18n('删除')}</button>
 <script>
 
 
 $('#402880242a65aabd012a65aac95f000b').bind('click',function(){
 
     if($('#g402880242a65aabd012a65aabd0a0000 tbody  tr.selected').length == 0){
	       if($(this).parent().parent().attr('value')!=null){
	  		    $(this).parent().parent().addClass("selected");				
			}else{	
			    	alert("${i18n('请选择一条记录！')}");
		         	return;
	      }
       }
         if(confirm( "${i18n('你确定要删除吗')}")){
        	$('#g402880242a65aabd012a65aabd0a0000 tbody  tr.selected').remove();
       }
  })
 </script></TD>
											<TD class="b_right"></TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
					</TR>
				</TBODY>
			</TABLE>
		</DIV>
	</DIV>

	<table id='g402880242a65aabd012a65aabd0a0000' class='tablesorter' border="0" cellpadding="1" cellspacing="1" >
		<thead>
		  <tr>
			<#if model.checkBox><#--定义CheckBox-->
				<th style="align: center"  width='5%' nowrap='nowrap' class="{sorter: false}">
					${i18n('全选')}<input type ='checkbox'   name='checkinstanceheader' 
					id="check_${model.objUid}"/>
				</th>
			</#if>
            <th id='col_name'    nowrap='nowrap' align='center'>${i18n('列名')}  </th> 
            <th id='dbtype'    nowrap='nowrap' align='center'>${i18n('数据库类型')} </th> 
            <th id='dbsize'    nowrap='nowrap' align='center'>${i18n('字段长度')} </th> 
		</tr>
		</thead>
		<tbody>
		
		
		<tr id="tr0"  style="display:none">
					<td style="align: center" >&nbsp;&nbsp;<input type ='checkbox' checked=true class='list_check'  name='checkinstance'/> <input type ='hidden' name='checkinstance_hidden'/> </td>
		            <td  nowrap='nowrap' align='center' >    <input  style='border:#B3B3B3 1px solid;'  exedo_notnull='NotNull'   onclick="this.style.borderColor='#406B9B'" onmouseover="this.style.borderColor='#99E300'" onmouseout="this.style.borderColor='#A1BCA3'"  type='text' name='col_name'  title='列名'  size="25"/>  </td> 
		            <td  nowrap='nowrap' align='center' >    <select   style='width:100px'  exedo_notnull='NotNull'  name="dbtype"  title='数据库类型' exedo_validconfig='RealNumber' exedo_length='' >
							<option/>
							<option value="BIT">BIT</option>
							<option value="TINYINT">TINYINT</option>
							<option value="SMALLINT">SMALLINT</option>
							<option value="INTEGER">INTEGER</option>
							<option value="BIGINT">BIGINT</option>
							<option value="FLOAT">FLOAT</option>
							<option value="REAL">REAL</option>
							<option value="DOUBLE">DOUBLE</option>
							<option value="NUMERIC">NUMERIC</option>
							<option value="DECIMAL">DECIMAL</option>
							<option value="CHAR">CHAR</option>
							<option value="VARCHAR" selected="selected"  >VARCHAR</option>
							<option value="VARCHAR2">VARCHAR2</option>
							<option value="TEXT">TEXT</option>
							<option value="LONGVARCHAR">LONGVARCHAR</option>
							<option value="DATE">DATE</option>
							<option value="DATETIME">DATETIME</option>
							<option value="TIME">TIME</option>
							<option value="TIMESTAMP">TIMESTAMP</option>
							<option value="BINARY">BINARY</option>
							<option value="VARBINARY">VARBINARY</option>
							<option value="LONGVARBINARY">LONGVARBINARY</option>
							<option value="BLOB">BLOB</option>
							<option value="CLOB">CLOB</option>
							<option value="BOOLEAN">BOOLEAN</option>
							</select>  </td> 
		            <td  nowrap='nowrap' align='center' >    <input  style='border:#B3B3B3 1px solid;'   onclick="this.style.borderColor='#406B9B'" onmouseover="this.style.borderColor='#99E300'" onmouseout="this.style.borderColor='#A1BCA3'"  type='text' name='dbsize' id='gm_do_bo_property_dbmanager_dbsize' title='字段长度' exedo_validconfig='RealNumber' exedo_length='' size="25"/>  </td> 
			</tr>
		
		
		 <#list data as ins>
				<tr  value='${ins.uid?if_exists}'  title='${ins.name?if_exists}'>
				<#if model.NO><#--是否有数字序列-->
					<td align='center'>#{ins_index+1}</td>
				</#if>
				<#if model.checkBox><#--定义CheckBox-->
					<td style="align: center" >&nbsp;&nbsp;<input type ='checkbox' value='${ins.uid}' class='list_check'  name='checkinstance'/> <input type ='hidden' value='${ins.uid}' name='checkinstance_hidden'/> </td>
				<#elseif model.radio>
					<td align='center'><input type ='radio' value='${ins.uid}'  name='checkinstance'/>   <input type ='hidden' value='${ins.uid}' name='checkinstance_hidden'/>  </td>
				</#if>
				<#--输出其它的头标题 ins:{'l10n':'中国','name':'china','location':'a'}    item:{'key':'l10n'}--> 
				<#list model.normalGridFormLinks as item> 
			            <td  <#if item.noWrapValue>nowrap='nowrap'</#if> <#compress> <@JudgeAlign item/></#compress> >   <#if '${dataBind(ins,item)}' ==''> ${item.htmlValue} </#if> </td> 
				</#list>
				</tr>
	     </#list>
		     
		  
		</tbody>
		
		
		   <tfoot>
	     	<tr> <td  style="text-align:center;align:center"  colspan="4" >
			           <button type="button"  style=""  id='3ba35f69a6084e76bfed4c89e41c2f65'  class='ctlBtn' >${i18n('保存')}</button>
					<script>
					
					 function fnCB3ba35f69a6084e76bfed4c89e41c2f65(){
							try{
								if($('#F' + 'PM_DO_UI_Controller_Update').size()>0){
						  			$('#F' + 'PM_DO_UI_Controller_Update').dialog('close');
						  		}else{
						  			$('#' + 'PM_DO_UI_Controller_Update').parents(".ui-dialog-content").dialog('close');
							  	}  	
						  	}catch(e){
						  	}	
						  
					  		reloadTree();     
					  	
					 }
					
					$('#3ba35f69a6084e76bfed4c89e41c2f65').bind('click',function(){
					
					  var isValid = true;
					  
					
					  $("input[name='col_name']").each(
					   function(index,o){
						 if($(o).parent().parent().attr('id')!='tr0'){
					       var value = $(o).val(); 
					       if(value==''){
					       	 o.focus();
					       	 isValid = false;
					       	 alert("${i18n('列名不能为空!')}"+index);
					       	 return;
					       }
					     }
					   });
					   
					if(isValid){   
					
					  var type = $("select[name='dbtype']").size(); 
						$("select[name='dbtype']").each(
						   function(index,o){
						     if($(o).parent().parent().attr('id')!='tr0'){
						       var value = $(o).val(); 
						       if(value==''){
						       	 o.focus();
						         isValid = false;
						       	 alert("${i18n('字段类型不能为空!')}");
						      	 return;
						       }
						     }
						 });
					}
					
					if(isValid){	 
						 $("input[name='dbsize']").each(
						   function(index,o){
						       if((value=='') && isValid){
						       	 o.focus();
						         isValid = false;
						       	 alert("${i18n('字段长度不能为空!')}");
						       	 return;
						       }else   if(!checkErrNum(value) && isValid){
						          o.focus();
						          isValid = false;
						       	  alert("${i18n('字段长度只能为数字!')}");
						          return;
						       }

						   });
					 }
////////////////////////////////////////////////有效性判断结束

////////////////////界面参数传递到后台
                     if(isValid){
			           	   var paras =  $('#a402880242a65aabd012a65aabd0a0000').serialize();
			           	  	callAction({ 'btn':$('#3ba35f69a6084e76bfed4c89e41c2f65')[0],
				   			   'actionName':"com.exedosoft.plat.action.customize.tools.DOAlterTable",
				   			   'paras':paras});
				   	  }		   
	   			   
	   			   
					  }
					);
					</script>  &nbsp; 
				</td></tr>
					     <tfoot>
   		
		
	</table>
		
</form>	


</div>	

<script language="javascript">

		
		$('#check_402880242a65aabd012a65aabd0a0000').bind('click',function(){
			$('#g402880242a65aabd012a65aabd0a0000 .list_check').attr('checked',$('#check_402880242a65aabd012a65aabd0a0000').attr("checked"));
			///同时把第一条记录selected
			if($('#check_402880242a65aabd012a65aabd0a0000').attr("checked")){
				$('#g402880242a65aabd012a65aabd0a0000 tbody  tr').eq(0).addClass("selected");
			}else{
				$('#g402880242a65aabd012a65aabd0a0000 tbody  tr').eq(0).removeClass("selected");
			}
		});
		
		$('#g402880242a65aabd012a65aabd0a0000 .list_check').bind('click',function(e){
			if(!$(this).attr('checked')){
				$(this).parent().parent().removeClass("selected");
				if($('#g402880242a65aabd012a65aabd0a0000 .selected').size()==0){
					$('#g402880242a65aabd012a65aabd0a0000 .list_check:checked:first').parent().parent().addClass("selected");				
				}
				e.stopPropagation();
			}
		});

		$('#g402880242a65aabd012a65aabd0a0000 tbody  tr').bind('click',function(){
			$('#g402880242a65aabd012a65aabd0a0000 tbody  tr.selected').removeClass("selected");//去掉原来的选中selected
			$(this).addClass("selected");
//			$(this).find(".list_check").attr("checked",true);//点击就选中，容易出现问题
		});
		$('#g402880242a65aabd012a65aabd0a0000 tbody  tr').bind('dblclick',function(){
			var selectedValue = $(this).attr('value');
			var dealBus = "&dataBus=setContext&contextKey=DO_BO_Property" + "&contextValue=" + selectedValue;
			$(".toolbar .selected").removeClass("selected");
			$(this).addClass("selected");
				popupDialog('PM_DO_BO_Property_Browse','Browse','/${webmodule}/mvccontroller?paneModelUid=6de9f6de1918483b872ac823398c53ba' + dealBus,'','')

		});
		$('#g402880242a65aabd012a65aabd0a0000 tbody  tr').bind('mouseover',function(){
			$(this).addClass("mover");
		}).bind('mouseout',function(){
			$('#g402880242a65aabd012a65aabd0a0000 tbody  tr').removeClass("mover");
		});
		
//		$('#g402880242a65aabd012a65aabd0a0000 tbody  tr input').bind('change',function(){
//		   $(this).parents("tr").children().eq(0).children(".list_check").attr("checked",true);
//		});

</script>

</div>


