<#include "/WEB-INF/view/inc.ftl"/>

<@bslist qpage=qpage>
	<@bstable>
		<thead>
			<tr>
		        <th><input type="checkbox" class="allcheck"/></th>
				<th>博客id</th>
				<th>博客评论内容</th>
				<th>父评论id</th>
				<th>创建时间</th>
				
				
								
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		    <#list qpage.list?if_exists as row>
			    <tr data="id:${row.id};">
			        <td><input type="checkbox" class="onecheck"/></td>
				    <td>${(row.blog_id)!}</td>				    
					<td>${(row.blog_comment_content)!}</td>				    
					<td>${(row.parent_id)!}</td>				    
					<td>${(row.cdate)!}</td>				    
									    
									    
					<td>
			        	<@bsbutton size='xs' icon='pencil' class='editbtn'/>
			        	<@bsbutton size='xs' icon='remove' class='delbtn'/>
			        </td>
			    </tr>
		    </#list>
		</tbody>
	</@bstable>
</@bslist>