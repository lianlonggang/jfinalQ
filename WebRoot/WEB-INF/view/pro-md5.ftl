<#include "/WEB-INF/view/inc.ftl"/>
<@html>
<@head 'bs'>
<title>uikoo9.com</title>
</@head>

<body style="background-color:#eee;padding-top:30px;">
	<div class="container">
		<div class="row">
			<blockquote class="blockquote-reverse">
				<h1>MD5</h1>
				<p>Message Digest Algorithm MD5（消息摘要算法）为计算机安全领域广泛使用的一种散列函数，用以提供消息的完整性保护。</p>
				<footer>百度百科</footer>
			</blockquote>
		</div>
		<div class="row" style="padding:10px;">
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 inputdiv">
				<input type="text" class="form-control input-lg" id="md5input" name="code" required placeholder="Enter code">
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
				<button type="button" class="btn btn-primary btn-block btn-lg" id="md5btn">MD5</button>
			</div>

		</div>
		<div class="row">
			<div class="panel panel-default" style="display:none;margin:20px;">
				<div class="panel-body">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<p class="resp">加密前：<span></span></p>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<p class="resp">加密后：<span></span></p>
					</div>
				</div>
			</div>
		</div>
		<input type="button" value="test" onclick="test();"/>
	</div>
	
	
	<@js 'bs'></@js>
	<script src="${base}/UIS/web/js/uikoo9.js"></script>
	<script src="${base}/UIS/web/js/pro-md5.js"></script>
</body>
</@html>