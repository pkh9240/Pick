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
    <link rel="stylesheet" href="voteRegistration.css"> </head>

<body>
    <p id="demo"></p>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-10 col-md-7 col-lg-6">
                <form class="form-vertical" role="form">
                    <fieldset>
                        <legend>PICK REGISTRATION</legend>
                        <div class="form-group">
                            <label for="input-text" class="control-label">SUBJECT</label>
                            <input type="text" class="form-control" id="input-text" placeholder="write topic"> </div>
                        <div class="form-group">
                            <label for="content" class="control-label">CONTENT</label>
                            <textarea class="form-control" id="content" rows="4" placeholder="write your story"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="end-date" class="control-label">END DATE</label>
                            <input type="text" class="form-control mask-date" id="end-date" placeholder="dd/mm/yyyy"> </div>
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
                            <div class="radio">
                                <label>
                                    <input type="radio" name="job" value="designer" checked="checked" /> <span>ALL</span> </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="job" value="frontend" /> <span>PARTICIPANT</span> </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="job" value="backend" /> <span>ONLY ME</span> </label>
                            </div>
                        </div>
                    </fieldset>
                </form>
                <div style="margin-left:90px;">
                    <button class="btn js-select-button btn--active btn btn-primary no-js" type="submit" value="one">MULTI -CHOICE</button>
                    <button class="btn js-select-button btn btn-primary" type="submit" value="two">VERSUS</button>
                 
                </div>
                <br>
                <br>
                <div class='c-product__price js-select js-one'>
                    <div style="font-size:25px; margin-left:120px;"> MULTIPLE CHOICE
                        <button class='btn btn--add' id="addVote"> ADD EXAMPLE </button>
                    </div>
                    <br>
                    <form class="form-vertical" id="table">
                        <div class="form-group">
                            <div class="col-xs-6" style="padding-left:0px;">
                                <label for="vote" class="control-label">EXAMPLE </label>
                                <div>
                                    <input type="text" class="form-control" id="vote" placeholder="ENTER CONTENT"> </div>
                            </div>
                            <div class="col-xs-6" id="filebox" style="margin-top:16px; padding-left:0px;">
                                <form>
                                    <label for="image" style="margin-top:7px; margin-left:12px"> ADD IMAGE</label>
                                    <input type="file" name="image" id="image" /> </form>
                                <div class="col-xs-4" id="image_preview"> <img src="#" class="img-circle" width="50px" height="50px">
                                    <!--<a href='#'><button>ì¬ì§ì­ì </button></a>--></div>
                            </div>
                        </div>
                    </form>
                </div>
                <!--ê°ê´ì ì¢ë£ -->
                <!-- vs ìì -->
                <div class='price-large js-select js-two js-hide'>
                    <!-- íëì ìí¸(1ë²ë³´ê¸°) ìì-->
                    <div class="col-xs-5">
                        <div class="row" id="filebox" style="height:100px; padding-top:0px;">
                            <div class="col-xs-12" id="image_preview1" style="padding-left:10px; display:none;"> <img src="#" class="img-circle" width="100px" height="100px">
                                <!--<a href='#'><button>ì¬ì§ì­ì </button></a>--></div>
                            <div class="col-xs-12" style="padding-left:53px;">
                                <label id="label1" for="image1" style="margin-left:18px;">ADD IMAGE</label>
                                <input type="file" name="image1" id="image1" /> </div>
                        </div>
                        <br>
                        <div class="row" style="padding-left:0px;">
                            <!--<label for="vote" class="control-label" >EXAMPLE1 </label>-->
                            <div>
                                <input type="text" class="form-control" id="vote" placeholder="CONTENT"> </div>
                        </div>
                    </div>
                    <!-- íëì ìí¸(1ë²ë³´ê¸°) ë-->
                    <div class="col-xs-1" style="margin-left:px; margin-top:20px; font-size:35px; text-align:center;"> vs </div>
                    <!-- íëì ìí¸(2ë²ë³´ê¸°) ìì -->
                    <div class="col-xs-5">
                        <div class="row" id="filebox" style="height:100px; padding-top:0px;">
                            <div class="col-xs-12" id="image_preview2" style="padding-left:10px; display:none;"> <img src="#" class="img-circle" width="100px" height="100px">
                                <!--<a href='#'><button>ì¬ì§ì­ì </button></a>--></div>
                            <div class="col-xs-12" style="padding-left:53px;">
                                <label id="label2" for="image2" style="margin-left:18px;">ADD IMAGE</label>
                                <input type="file" name="image2" id="image2" /> </div>
                        </div>
                        <br>
                        <div class="row" style="padding-left:0px;">
                            <!--<label for="vote" class="control-label" >EXAMPLE1 </label>-->
                            <div>
                                <input type="text" class="form-control" id="vote" placeholder="CONTENT"> </div>
                        </div>
                    </div>
                    <!-- íëì ìí¸ (2ë²ë³´ê¸°) ë -->
                </div>
                <br> </div>
            <!-- vs ë -->
            <!-- yes or no ìì -->
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
            <!-- yes or no ë -->
        </div>
    </div>
    <!-- end of container div-->
    <!-- ê¶íì¤ì  (ì íì¬í­) ë²í¼ -->
    <div class="container" style="padding-toppx">
        <div class="row" id="detail" style="margin-top:15px;">
            <!--  <button type="button" id="showHide" aria-activedescendant=""class="btn btn-default btn-xs" style="left:300px;">--><span style="font-size:17px; margin-left:15px">
       	상세설정
        </span>
            <button type="button" id="showHide"> <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span> </button>
        </div>
        <br>
        <!-- ìì¸ì¤ì  ë²í¼ -->
        <!-- ìì¸ì¤ì  Row (Default : hide) -->
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
                        <input type="checkbox" value="">11~20</label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">21~30</label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">31~40</label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">41~50</label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">51~60</label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">61~</label>
                </div>
            </div>
        </form>
    </div>
    <!-- ìì¸ì¤ì   ì¢ë£ -->
    <div class="row">
        <button type="button" class="btn btn-success" style="margin-left:150px;"> REGISTER</button>
    </div>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="voteRegistration.js"></script>
</body>

</html>