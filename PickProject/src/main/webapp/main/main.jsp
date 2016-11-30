<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="UTF-8">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <!--     css        -->
    <link rel="stylesheet" href="../main/main.css">
    <link rel="stylesheet" href="../main/tagsly/tagsly.css">
    <link rel="stylesheet" href="../node_modules/jquery-colorbox/colorbox.css">
   </head>
   
 
<body>
 
    <div class="float-nav">
        <a href="#" class="menu-btn button-collapse" data-activates="slide-out">
            <ul>
                <li class="line"></li>
                <li class="line"></li>
                <li class="line"></li>
            </ul>
            <!--            <div class="menu-txt">menu</div>-->
        </a>
    </div>

    <div class="float-filter-nav">
        <a href="#modal1" class="menu-btn">
            <div class="menu-filter-txt">Filter</div>
        </a>
    </div>
 
    <div id="modal1" class="modal">
        <div class="modal-content">
            <h4>Fitering</h4>
            <form action="#">
             
                <p>Gender</p>
                <div>
                    <input name="gender" type="radio" id="all" />
                    <label for="all">All</label>
                    <input name="gender" type="radio" id="male" />
                    <label for="man">Man</label>
                    <input name="gender" type="radio" id="female" />
                    <label for="woman">Woman</label>
                </div>
       
                <p>Age</p>
                <div>
                    <input type="checkbox" id="s10" />
                    <label for="s10">10s</label>
                    <input type="checkbox" id="s20" />
                    <label for="s20">20s</label>
                    <input type="checkbox" id="s30" />
                    <label for="s30">30s</label>
                    <input type="checkbox" id="s40" />
                    <label for="s40">40s</label>
                    <input type="checkbox" id="s50" />
                    <label for="s50">50s</label>
                    <input type="checkbox" id="s60" />
                    <label for="s60">60s</label>
                </div>
            </form>
       
            <!--Category-->
            <p>Category (Max 3)</p>
            <div>
                <input id="tags" name="tags" type="text" value=""> </div>
        </div>
        <div class="modal-footer"> <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Filtering</a> </div>
    </div>
    <!---->
   
    <div class="float-add-nav">
        <a href="#" id="add_btn" class="menu-btn">
            <div class="menu-add-txt">Add</div>
        </a>
    </div>
    <!---->
    <!---->

    <ul id="slide-out" class="side-nav">
        <li>
            <div class="userView">
                <div class="background">
                	<img src="../image/background.png">
                 </div>
                <a href="#!user">
                	<img class="circle" src="../image/card6.jpg">
                </a> <a href="#!name"><span class="white-text name">${user.userName}</span></a>
                <a href="#!email">
                	 <span class="white-text email">${user.userEmail}</span> 
                </a>
            </div>
        </li>
       	<li><a href="#" id="logout_btn">Logout</a></li>
        <li><a href="#" id="myAccount_btn">My Account</a></li>
        <li> <a href="#" id="adminPage_btn">Admin Page</a> </li>
        <li> <a href="#" id="myPick_btn">My Pick</a> </li>
    </ul>

    <div class="sw">
        <form>
            <input type="search" class="search" placeholder="      Search..." />
            <button class="go"><span class="entypo-search"></span></button>
            <a href="#" class="logo" title="Pick"></a>
        </form>
    </div>

    <div class="content">
        <div class="wrap">
            <div id="main" role="main">
                <ul id="tiles">
                    <!-- These are our grid blocks -->
                    <li id="pick10000">
                        <!--íëì ì»¨íì¸  ìì-->
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card1.jpg'> </div>
                            <div class='post-content'>
                                <div class='category'>Computer</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
                        <!--íëì ì»¨íì¸  ìì-->
                    </li>
                    <li id="pick10001">
                        <!--íëì ì»¨íì¸  ìì-->
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card2.jpg'> </div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
                        <!--íëì ì»¨íì¸  ìì-->
                    </li>
                             <li onclick="location.href='single-page.html';">
                      
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card3.jpg'> </div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
              
                    </li>
                    <li onclick="location.href='single-page.html';">
          
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card4.jpg'> </div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
         
                    </li>
            
                    <li onclick="location.href='single-page.html';">
                            <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card5.jpg'> </div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
              
                    </li>
                    <li onclick="location.href='single-page.html';">
         
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>26</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card6.jpg'></div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
               
                    </li>
                    <li onclick="location.href='single-page.html';">
              
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card7.jpg'> </div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
        
                    </li>
                    <li onclick="location.href='single-page.html';">
           
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card8.jpg'></div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
    
                    </li>
          
                    <li onclick="location.href='single-page.html';">
        
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card6.jpg'></div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
             
                    </li>
                    <li onclick="location.href='single-page.html';">
         
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card1.jpg'></div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
        
                    </li>
                    <li onclick="location.href='single-page.html';">
        
                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card2.jpg'></div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>
      
                    </li>
                    <li onclick="location.href='single-page.html';">

                        <div class='post-module'>
                            <div class='thumbnail'>
                                <div class='date'>
                                    <div class='day'>27</div>
                                    <div class='month'>Mar</div>
                                </div> <img src='../image/card3.jpg'> </div>
                            <div class='post-content'>
                                <div class='category'>Photos</div>
                                <h1 class='title'>City Lights in New York</h1>
                                <h2 class='sub_title'>The city that never sleeps.</h2>
                                <p class='description'>New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.</p>
                                <div class='post-meta'> <span class='timestamp'>
                                    <i class='fa fa-clock-o'></i> 6 mins ago
                                 </span> <span class='comments'>
                                    <i class='fa fa-comments'></i>
                                        <a href='#'>39 comments</a>
                              </span> </div>
                            </div>
                        </div>

                    </li> 
                    <!-- End of grid blocks -->
                </ul>
            </div>
        </div>
    </div>
    <!---->
    <!---//End-content---->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src='../main/main.js'></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <script>
        $(".button-collapse").sideNav();
    </script>
    <!----wookmark-scripts---->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.1/imagesloaded.pkgd.min.js"></script>
    <script src="../main/jquery.wookmark.js"></script>

    <script src="../main/tagsly/tagsly.js"></script>

    <script src="../node_modules/jquery-colorbox/jquery.colorbox-min.js"></script>
</body>

</html>