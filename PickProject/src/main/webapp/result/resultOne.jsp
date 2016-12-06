<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700'>
    <link rel="stylesheet" href="/result/resultOne.css">
    <!-- Fuentes de Google -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    <!-- Iconos -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> </head>

<body>
    <div><a href="#" id="save">SAVE</a></div>
    <div id="container">
        <div class="row">
            <div class="col s12 info" id="category">Category > computer</div>
            <div class="col offset-s4 s4"> <span id="title">얼굴 순위</span> </div>
            <div class="col s12">&nbsp;</div>
            <div class="col offset-s4 s4"> <span id="content"> 누가 제일 잘생겼나요?</span> </div>
            <div class="col s12">
                <div id='gender_dashboard'></div>
                <div id='age_dashboard'></div>
            </div>
            <div id="yes"> YES </div>
            <div class="col s6" id="comment1">
                <div class="detailBox">
                    <div class="actionBox">
                        <ul class="commentList">
                            <li>
                                <div class="commenterImage"> <img src="http://placekitten.com/50/50" /> </div>
                                <div class="commentText">
                                    <p class="">Hello this is a test comment.</p> <span class="date sub-text">on March 5th, 2014</span> </div>
                            </li>
                            <li>
                                <div class="commenterImage"> <img src="http://placekitten.com/45/45" /> </div>
                                <div class="commentText">
                                    <p class="">Hello this is a test comment and this comment is particularly very long and it goes on and on and on.</p> <span class="date sub-text">on March 5th, 2014</span> </div>
                            </li>
                            <li>
                                <div class="commenterImage"> <img src="http://placekitten.com/40/40" /> </div>
                                <div class="commentText">
                                    <p class="">Hello this is a test comment.</p> <span class="date sub-text">on March 5th, 2014</span> </div>
                            </li>
                            <li>
                                <div class="commenterImage"> <img src="http://placekitten.com/40/40" /> </div>
                                <div class="commentText">
                                    <p class="">Hello this is a test comment.</p> <span class="date sub-text">on March 5th, 2014</span> </div>
                            </li>
                            <li>
                                <div class="commenterImage"> <img src="http://placekitten.com/40/40" /> </div>
                                <div class="commentText">
                                    <p class="">Hello this is a test comment.</p> <span class="date sub-text">on March 5th, 2014</span> </div>
                            </li>
                        </ul>
                        <div class="row">
                            <div class="input-field col s12">
                                <input placeholder="input your opinion" id="comment" type="text" class="validate">
                                <label for="comment">Comment</label>
                            </div>
                            <div class="col offset-s6 s6">
                                <label><a id="commentsend1" href="#">SEND</a></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="no"> NO </div>
            <div class="col s6" id="comment2">
                <div class="detailBox">
                    <div class="actionBox">
                        <ul class="commentList">
                            <li>
                                <div class="commenterImage"> <img src="http://placekitten.com/50/50" /> </div>
                                <div class="commentText">
                                    <p class="">Hello this is a test comment.</p> <span class="date sub-text">on March 5th, 2014</span> </div>
                            </li>
                            <li>
                                <div class="commenterImage"> <img src="http://placekitten.com/45/45" /> </div>
                                <div class="commentText">
                                    <p class="">Hello this is a test comment and this comment is particularly very long and it goes on and on and on.</p> <span class="date sub-text">on March 5th, 2014</span> </div>
                            </li>
                            <li>
                                <div class="commenterImage"> <img src="http://placekitten.com/40/40" /> </div>
                                <div class="commentText">
                                    <p class="">Hello this is a test comment.</p> <span class="date sub-text">on March 5th, 2014</span> </div>
                            </li>
                        </ul>
                        <div class="row">
                            <div class="input-field col s12">
                                <input placeholder="input your opinion" id="comment" type="text" class="validate">
                                <label for="comment">Comment</label>
                            </div>
                            <div class="col offset-s6 s6">
                                <label><a id="commentsend2" href="#">SEND</a></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js'></script>
    <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <script src="/result/resultOne.js"></script>
</body>

</html>