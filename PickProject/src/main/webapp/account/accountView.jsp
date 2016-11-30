<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>Account</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="accountView.css"> </head>

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
                        <input id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Name</label>
                    </div>
                    <div class="input-field col s6">
                        <input disabled value="syou099@naver.com" id="disabled" type="text" class="validate">
                        <label for="disabled">E mail</label>
                    </div> 
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="password" type="password" class="validate">
                        <label for="password">Password</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="password" type="password" class="validate">
                        <label for="password">Password confirm</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <select>
                            <option value="" disabled selected>Gender</option>
                            <option value="1">male</option>
                            <option value="2">female</option>
                        </select>
                        <label>Gender</label>
                    </div>
                    <div class="input-field col s6">
                        <select>
                            <option value="" disabled selected>Age</option>
                            <option value="1">10</option>
                            <option value="2">20</option>
                            <option value="2">30</option>
                            <option value="2">40</option>
                            <option value="2">50</option>
                            <option value="2">60~</option>
                        </select>
                        <label>Age</label>
                    </div>
                     <div class="input-field col s12">
                <select multiple>
                    <option value="" disabled selected>Choose your Interest</option>
                    <option value="2" data-icon="../image/card6.jpg" class="circle">Computer</option>
                    <option value="3" data-icon="../image/card1.jpg" class="circle">Coding</option>
                    <option value="3" data-icon="../image/card2.jpg" class="circle">job</option>
                    <option value="1" data-icon="../image/card3.jpg" class="circle">Computer</option>
                    <option value="2" data-icon="../image/card4.jpg" class="circle">Coding</option>
                    <option value="3" data-icon="../image/card5.jpg" class="circle">job</option>
                    <option value="1" data-icon="../image/card6.jpg" class="circle">Computer</option>
                    <option value="2" data-icon="../image/card7.jpg" class="circle">Coding</option>
                    <option value="3" data-icon="../image/card8.jpg" class="circle">job</option>
                    <option value="1" data-icon="../image/card9.jpg" class="circle">Computer</option>
                    <option value="2" data-icon="../image/card2.jpg" class="circle">Coding</option>
                    <option value="3" data-icon="../image/card3.jpg" class="circle">job</option>
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
    <script src="jquery.imageMask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <script src="accountView.js"></script>
   
</body>

</html>