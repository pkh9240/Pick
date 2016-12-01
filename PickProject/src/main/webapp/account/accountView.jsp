<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Account</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../account/accountView.css"> </head>

<body>
    <div class="form">
        <div id="myaccount">
            <h1 id="my">MY</h1>
            <h1 id="account"> A c c o u n t  </h1> </div>
        <div class="preview img-wrapper"></div>
        <div class="file-upload-wrapper">
            <input type="file" name="file" class="file-upload-native" accept="image/*" />
            <input type="text" disabled placeholder="upload" class="file-upload-text" /> </div>
        <div class="row">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <input id="icon_prefix" type="text" class="validate" value="${user.userName}">
                        <label for="icon_prefix">Name</label>
                    </div>
                    <div class="input-field col s6">
                        <input disabled value="${user.userEmail}" id="disabled" type="text" class="validate">
                        <label for="disabled">E mail</label>
                    </div> 
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="password" type="password" class="validate" value="${user.userPassword}">
                        <label for="password">Password</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="passwordConfirm" type="password" class="validate" value="${user.userPassword}">
                        <label for="password">Password confirm</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <select>
                            <option value="" disabled selected>Gender</option>
                            <option value="male" ${user.userGender=='male' ?'selected':''}>male</option>
                            <option value="female" ${user.userGender=='male' ? 'selected':''}>female</option>
                        </select>
                        <label>Gender</label>
                    </div>
                    <div class="input-field col s6">
                        <select>
                            <option value="" disabled selected>Age</option>
                            <option value="10s" ${user.userAge=='10s' ? 'selected':''}>10대</option>
                            <option value="20s"  ${user.userAge=='20s' ? 'selected':''}>20대</option>
                            <option value="30s"  ${user.userAge=='30s' ? 'selected':''}>30대</option>
                            <option value="30s"  ${user.userAge=='40s' ? 'selected':''}>40대</option>
                            <option value="50s"  ${user.userAge=='50s' ? 'selected':''}>50대</option>
                            <option value="60s"  ${user.userAge=='60s' ? 'selected':''}>60대 이상</option>
                        </select>
                        <label>Age</label>
                    </div>
                     <div class="input-field col s12">
                <select multiple>
                    <option value="" disabled selected>Choose your Interest</option>
                    	<c:set var="isSelected"/>
                    	<c:forEach var="interest" items="${interestList}">
                    		<c:forEach var="userInterest" items="${user.interestList}">
                    				
                    				<c:if test="${interest.interestNo==userInterest.interestNo}">
 											<c:set var="isSelected" value="true"/>
                    				</c:if>
                    				 <c:if test="${interest.interestNo != userInterest.interestNo}">
                    					<c:set var="isSelected" value="false"/>
                    				</c:if>
                    			
                  			</c:forEach>
                  			<option value="${interest.interestNo}" data-icon="${interest.interestPhoto}" class="circle" ${isSelected==true?'selected':''}>${interest.content}</option>
                  		 </c:forEach>
                    
 
                </select>
                <label>Interest</label>
            </div>
                </div>
                <center>
                    <button class="btn waves-effect waves-light" type="submit" name="action">S A V E <i class="material-icons right">send</i> </button>
                </center>
            </form>
        </div>
    </div>
    <!--end of content-->
    <!--start of javascript-->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <script src="../account/accountView.js"></script>
   
</body>

</html>