<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700'>
    <link rel="stylesheet" href="resultOne.css">
    <!-- Fuentes de Google -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    <!-- Iconos -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css"> 
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>

<body>
    <div id="container">
        <div class="row">
            <div class="col s12 info">Category : computer</div>
            <div class="col s12 info">Type : Multi</div>
            <div class="col s12 info">End Date : 2019/12/12</div>
            <div class="col s12 ">age : 10s,20s,30s</div>
            <div class="col s12 info">gender : man</div>
            <div class="col s12 info">count : 240</div>
            <div class="col offset-s4 s4"> <span id="title">ì¼êµ´ ìì</span> </div>
            <div class="col s12">&nbsp;</div>
            <div class="col offset-s4 s4"> <span id="content"> ëê° ì ì¼ ììê²¼ëì?</span> </div>
            <div class="col s12">
                <div id='gender_dashboard'></div>
                <div id='age_dashboard'></div>
            </div>
        
              <div class="col s6">
                <div class="detailBox">
                    <div class="titleBox">
                        <label>Yes</label>
                    </div>
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
                                <button class="btn waves-effect waves-light" type="submit" name="action">Add<i class="material-icons right">send</i> </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
              <div class="col s6">
                <div class="detailBox">
                    <div class="titleBox">
                        <label>No</label>
                    </div>
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
                                <button class="btn waves-effect waves-light" type="submit" name="action">Add<i class="material-icons right">send</i> </button>
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
    <script src="resultOne.js"></script>
</body>

</html>