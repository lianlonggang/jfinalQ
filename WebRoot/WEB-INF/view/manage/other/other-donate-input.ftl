<#include "/com/uikoo9/util/jfinal/view/common/inc.ftl"/>

<form class="form-horizontal" role="form">
	<input type="hidden" name="row.id" value="${(row.id)!}"/>
	<@bsinput title='捐助人姓名' name='row.other_donate_name' value='${(row.other_donate_name)!}'/>	
	<@bsinput title='捐助金额' name='row.other_donate_money' value='${(row.other_donate_money)!}'/>	
	<@bsinput title='捐助类型' name='row.other_donate_type' value='${(row.other_donate_type)!}'/>	
	<@bsinput title='捐助寄语' name='row.other_donate_message' value='${(row.other_donate_message)!}'/>	
		
		
		
		
</form>