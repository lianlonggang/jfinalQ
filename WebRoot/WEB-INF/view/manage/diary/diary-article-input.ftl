<#include "/WEB-INF/view/inc.ftl"/>

<form class="form-horizontal" role="form">
	<input type="hidden" name="row.id" value="${(row.id)!}"/>
	<@bsinput title='日记类型' input=false>
		<select class="form-control" name='row.diary_type_id'>
			<#list diaryTypes as item>
				<option value="${item.id}" <#if row?? && row.diary_type_id == item.id>selected</#if>>${item.diary_type_name}</option>
			</#list>
		</select>
	</@bsinput>
	<@bsinput title='日记标题' name='row.diary_article_title' value='${(row.diary_article_title)!}'/>	
	<@bsinput title='日记内容' input=false>
		<script id="ueditor" name="row.diary_article_content" type="text/plain">${(row.diary_article_content)!}</script>
	</@bsinput>
</form>