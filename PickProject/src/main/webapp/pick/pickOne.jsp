
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="pickOne.css">

    
    </head>

<body>
<div class="navbar-fixed">
			<nav class="custom-nav">
				<div class="nav-wrapper">
					<a href="#!" class="brand-logo left">&nbsp;&nbsp;&nbsp;Admin Page</a>
				</div>
			</nav>
		</div>
    <div id="container">
        <div class="info">Category : computer</div>
        <div class="info">Type : 1 : 1</div>
        <div class="info">End Date : 2019/12/12</div>
        <div class="info">age : 10s,20s,30s</div>
        <div class="info">gender : man</div>
        <div class="info">count : 240</div>
        <div id="title"> 짜장면? 짬뽕?! </div>
        <div class="col s12" id="content"> <span class="flow-text">오늘 점심에 짜장면을 먹을까요? 짬뽕을 먹을까요?!</span></div>
        <div id="mainContent">
            <ul>
                <a class="image-tooltip" title="왼쪽꺼">
                    <li>
                        <input type="radio" id="cb1" name="a" />
                        <label for="cb1"><img src="http://lorempixel.com/100/100" /></label>
                    </li>
                </a>
                VS
                <a class="image-tooltip" title="오른쪽꺼">
                    <li>
                        <input type="radio" id="cb2" name="a" />
                        <label for="cb2"><img src="http://lorempixel.com/101/101" /></label>
                    </li>
                </a>
            </ul>
        </div>
        <div id="bottom"> <span class="label"></span></a> <a class="iconBtn" href="#pick" id="pick-btn">PICK!</a> </div>
        
        
        
        <!---->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <script src="neat-tooltip.min.js"></script>
       
</body>

</html>