<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <title>PICK REGISTRATION</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="../voteRegistration/voteRegistration.css">
    <link rel="stylesheet" href="../fontello-plus/css/close.css"></head>

<body>
    <p id="demo"></p>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-10 col-md-7 col-lg-6">
                <form class="form-vertical" role="form">
                    <fieldset>
                        <legend>PICK REGISTER</legend>
                        <div class="form-group">
                            <label for="input-text" class="control-label" id="subject">SUBJECT</label>
                            <input type="text" class="form-control" id="input-text" placeholder="write topic"> </div>
                        <div class="form-group">
                            <label for="content" class="control-label">CONTENT</label>
                            <textarea class="form-control" id="content" rows="4" placeholder="write your story"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="end-date" class="control-label">END DATE</label>
                            <input type="text" class="form-control mask-date" id="end-date" placeholder="DD / MM / YYYY"> </div>
                        <div class="form-group">
                            <label for="input-select" class="control-label">CATEGORY</label>
                            <select class="form-control" id="input-select">
                                <option value="">-</option>
                                <option value="1">BEAUTY</option>
                                <option value="2">SCIENCE</option>
                                <option value="4">IT</option>
                                <option value="5">GAME</option>
                                <option value="6">SPORTS</option>
                                <option value="7">LAW</option>
                                <option value="8">CAR</option>
                                <option value="9">PET</option>
                                <option value="10">FOOD</option>
                                <option value="11">HEALTH</option>
                                <option value="12">TRAVEL</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="job" class="control-label">RESULT OPTION</label>
                            <div class="radio" id="radiofst">
                                <label>
                                    <input type="radio" name="job" value="designer" checked="checked" /> <span class="radioop">ALL</span> </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="job" value="frontend" /> <span class="radioop">PARTICIPANT</span> </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="job" value="backend" /> <span class="radioop">ONLY ME</span> </label>
                            </div>
                        </div>
                    </fieldset>
                </form>
                <div id="line"> <a>Select the type of PICK!</a></div>
                <div id="btngroup">
                    <button class="btn js-select-button btn--active btn btn-link no-js" type="submit" value="one">MULTI -CHOICE</button>
                    <button class="btn js-select-button btn btn-link" type="submit" value="two">VERSUS</button>
                 
                </div>
                <br>
                <br>
                <div class='c-product__price js-select js-one'>
                    <div id="multisub" > 
                        <button class='btn btn--link' id="addVote"><span id="iconplus" class="icon-plus"></span></button>
                    </div>
                    <br>
                    <form class="form-vertical" id="table">
                        <div class="form-group">
                            <div class="col-xs-6" id="addex" style="padding-left:0px;">
                                <label for="vote" id="exam" class="control-label">EXAMPLE </label>
                                <div>
                                    <input type="text" class="form-control" id="vote" placeholder="ENTER CONTENT"> </div>
                            </div>
                            <div class="col-xs-6" id="filebox" style="margin-top:16px; padding-left:0px;">
                                <form>
                                    <label for="image" id="addimgimg" > ADD IMAGE</label>
                                    <input type="file" name="image" id="image" /> </form>
                                <div class="col-xs-4" id="image_preview"> <img src="#" class="img-circle" width="50px" height="50px">
                                    <!--<a href='#'><button>사진삭제</button></a>--></div>
                            </div>
                        </div>
                    </form>
                </div>
                <!--객관식 종료 -->
                <!-- vs 시작 -->
                <div class='price-large js-select js-two js-hide'>
                    <!-- 하나의 셋트(1번보기) 시작-->
                    <div class="col-xs-5">
                        <div class="row" id="filebox" style="height:100px; padding-top:20px;">
                            <div class="col-xs-12" id="image_preview1" style="padding-left:10px; display:none;"> <img src="#" class="img-circle" width="100px" height="100px">
                                <!--<a href='#'><button>사진삭제</button></a>--></div>
                            <div class="col-xs-12" style="padding-left:83px;">
                                <label id="label1" for="image1" style="margin-left:18px;">ADD IMAGE</label>
                                <input type="file" name="image1" id="image1" /> </div>
                        </div>
                        <br>
                        <div class="row" style="padding-left:30px; padding-top:20px;">
                            <!--<label for="vote" class="control-label" >EXAMPLE1 </label>-->
                            <div>
                                <input type="text" class="form-control" style="width:200px;" id="vote" placeholder="CONTENT"> </div>
                        </div>
                    </div>
                    <!-- 하나의 셋트(1번보기) 끝-->
                    <div class="col-xs-1" id="vs" > vs </div>
                    <!-- 하나의 셋트(2번보기) 시작 -->
                    <div class="col-xs-5">
                        <div class="row" id="filebox" style="height:100px; padding-left:20px; padding-top:20px;">
                            <div class="col-xs-12" id="image_preview2" style="padding-left:10px; display:none;"> <img src="#" class="img-circle" width="100px" height="100px">
                                <!--<a href='#'><button>사진삭제</button></a>--></div>
                            <div class="col-xs-12" style="padding-left:53px;">
                                <label id="label2" for="image2" style="margin-left:18px;">ADD IMAGE</label>
                                <input type="file" name="image2" id="image2" /> </div>
                        </div>
                        <br>
                        <div class="row" style="padding-top:20px;padding-left:25px;">
                            <!--<label for="vote" class="control-label" >EXAMPLE1 </label>-->
                            <div >
                                <input type="text" class="form-control" id="vote" style="width:200px;"  placeholder="CONTENT"> </div>
                        </div>
                    </div>
                    <!-- 하나의 셋트 (2번보기) 끝 -->
                </div>
                <br> </div>
            <!-- vs 끝 -->
            <!-- yes or no 시작 -->
            <div class='price-large js-select js-three js-hide'>
                <div class="col-xs-4" style="margin-left:120px;">
                    <button type="button" class="btn btn-primary ">YES</button> <span style="font-size:15px;">OR</span>
                    <button type="button" class="btn btn-danger">NO</button>
                </div>
                <div class="col-xs-12">
                    <div class="col-xs-6" style="padding-left:0px;">
                        <label for="vote" class="control-label">TOPIC </label>
                        <div>
                            <input type="text" class="form-control" id="vote" placeholder="ENTER TOPIC"> </div>
                    </div>
                    <div class="col-xs-5" id="filebox" style="margin-top:22px;">
                        <form>
                            <label for="image">IMAGE</label>
                            <input type="file" name="image" id="image" /> </form>
                    </div>
                </div>
            </div>
            <!-- yes or no 끝 -->
        </div>
    </div>
    <!-- end of container div-->
    <!-- 권한설정 (선택사항) 버튼 -->
    <div class="container" style="padding-toppx">
        <div class="row" id="detail" >
            <!--  <button type="button" id="showHide" aria-activedescendant=""class="btn btn-default btn-xs" style="left:300px;">--><span id="optional1">
         Detail setting
            
        </span>&nbsp;
            <span id="optional2"> (Optional)</span>&nbsp;
            
            
            
           <a ><span class="glyphicon glyphicon-menu-down" id="showHide" aria-hidden="true"></span> </a>
        </div>
        <br>
        <!-- 상세설정 버튼 -->
        <!-- 상세설정 Row (Default : hide) -->
        <form class="row" style="display:none;" id="optionalSelect">
            <div class="col-xs-1" style="margin-left:30px;"> <span style="font-size:15px;">GENDER</span>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">MALE</label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">FEMALE</label>
                </div>
            </div>
            <div class="col-xs-3" style="margin-left:160px;"> <span style="font-size:15px;">AGE</span>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">10s
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">20s
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">30s
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">40s
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">50s
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">More than 60s</label>
                </div>
            </div>
            <div id="deco"></div>
        </form>
    </div>
 
    <!-- 상세설정  종료 -->
    <div class="row">
        <button type="button" class="btn btn-link" id="regi" > REGISTER</button>
    </div>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="../voteRegistration/voteRegistration.js"></script>
</body>

</html>