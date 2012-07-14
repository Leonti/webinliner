<!doctype html>
<head>
	<title>WebInliner</title>
	<link rel="stylesheet" href="resources/css/main.css">

<body>
	<div id="header">
		<div class="info">
			<span class="whatIsThis">What is this?</span><br>
			<div class="content">
			<p>
			You should always separate your html and css, but there are situations when you need to have your css inlined in html.
			</p>
			<p>
			Most common use case is creating html email - most email clients don't process external css styles and some are even ignore css in header &bdquo;style&ldquo; block.<br>
			The solution is to make your css inlined but it can get real ugly real fast.
			</p>
			<p>
			The solution is to work on html email just as on any other html page and keep html and css separated. When template is ready - use this service to inline your styles.
			</p>
			<p>
			If you want to automate process in your Java application you can use <a href="https://github.com/Leonti/CSSInliner">CSSInliner</a> java library.
			</p> 

			</div>
		</div>
		<span class="githubLink">This application uses <a href="https://github.com/Leonti/CSSInliner">CSSInliner</a> java library.</span>
	</div>