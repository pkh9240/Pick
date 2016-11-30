<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <!--    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css'>-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    <link rel="stylesheet" href="adminPage.css">
    <style>
        #modal1 {
            width: 50% !important;
            height: 120% !important;
        }
    </style>
</head>

<body>
    <div class="row">
        <div class="col s12">
            <ul class="tabs">
                <li class="tab col s3"><a href="#AdminPick">Admin Pick</a></li>
                <li class="tab col s3"><a href="#Feed">Feed</a></li>
                <li class="tab col s2"><a href="#UserInfo">UserInfo</a></li>
                <li class="tab col s3"><a href="#Category">Category</a></li>
            </ul>
        </div>
        <div id="AdminPick" class="col s12">
            <!--   ì¬ê¸°ë¶í° ADMIN PICK       -->
            <div class="row">
                <div id="admin" class="col s12">
                    <div class="card material-table">
                        <div class="table-header"> <span class="table-title">Admin Pick</span>
                            <div class="actions"> <a href="#add_users" class="modal-trigger waves-effect btn-flat nopadding"><i
									class="material-icons">person_add</i></a> <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i
									class="material-icons">search</i></a> </div>
                        </div>
                        <table id="datatable">
                            <thead>
                                <tr>
                                    <th data-field="UserName">UserName</th>
                                    <th data-field="Age">Age</th>
                                    <th data-field="Category">Category</th>
                                    <th data-field="Subject">Subject</th>
                                    <th data-field="PickType">PickType</th>
                                    <th data-field="StartDate">StartDate</th>
                                    <th data-field="EndDate">EndDate</th>
                                    <th data-field="PicnNum">PickNum</th>
                                    <th data-field="Count">Count</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Alvin</td>
                                    <td>13</td>
                                    <td>Computer</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>VS</td>
                                    <td>16.08.03</td>
                                    <td>16.12.04</td>
                                    <td>239</td>
                                    <td>1923</td>
                                </tr>
                                <tr>
                                    <td>Kevin</td>
                                    <td>53</td>
                                    <td>Culture</td>
                                     <td>iMac vs SAMSUNG PC</td>
                                    <td>MULTI</td>
                                    <td>16.06.02</td>
                                    <td>16.12.31</td>
                                    <td>912</td>
                                    <td>9348</td>
                                </tr>
                                <tr>
                                    <td>Lisa</td>
                                    <td>26</td>
                                    <td>Society</td>
                                     <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.02.03</td>
                                    <td>16.12.13</td>
                                    <td>573</td>
                                    <td>3958</td>
                                </tr>
                                <tr>
                                    <td>GD</td>
                                    <td>94</td>
                                    <td>IT</td>
                                      <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.03.01</td>
                                    <td>17.02.10</td>
                                    <td>459</td>
                                    <td>928</td>
                                </tr>
                                <tr>
                                    <td>Alvin</td>
                                    <td>25</td>
                                    <td>Computer</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>VS</td>
                                    <td>16.08.03</td>
                                    <td>16.12.04</td>
                                    <td>239</td>
                                    <td>1923</td>
                                </tr>
                                <tr>
                                    <td>Kevin</td>
                                    <td>84</td>
                                    <td>Culture</td>
                                     <td>iMac vs SAMSUNG PC</td>
                                    <td>MULTI</td>
                                    <td>16.06.02</td>
                                    <td>16.12.31</td>
                                    <td>912</td>
                                    <td>9348</td>
                                </tr>
                                <tr>
                                    <td>Lisa</td>
                                    <td>64</td>
                                    <td>Society</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.02.03</td>
                                    <td>16.12.13</td>
                                    <td>573</td>
                                    <td>3958</td>
                                </tr>
                                <tr>
                                    <td>GD</td>
                                    <td>39</td>
                                    <td>IT</td>
                                      <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.03.01</td>
                                    <td>17.02.10</td>
                                    <td>459</td>
                                    <td>928</td>
                                </tr>
                                <tr>
                                    <td>Alvin</td>
                                    <td>45</td>
                                    <td>Computer</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>VS</td>
                                    <td>16.08.03</td>
                                    <td>16.12.04</td>
                                    <td>239</td>
                                    <td>1923</td>
                                </tr>
                                <tr>
                                    <td>Kevin</td>
                                    <td>18</td>
                                    <td>Culture</td>
                                     <td>iMac vs SAMSUNG PC</td>
                                    <td>MULTI</td>
                                    <td>16.06.02</td>
                                    <td>16.12.31</td>
                                    <td>912</td>
                                    <td>9348</td>
                                </tr>
                                <tr>
                                    <td>Lisa</td>
                                    <td>38</td>
                                    <td>Society</td>
                               <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.02.03</td>
                                    <td>16.12.13</td>
                                    <td>573</td>
                                    <td>3958</td>
                                </tr>
                                <tr>
                                    <td>GD</td>
                                    <td>34</td>
                                    <td>IT</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.03.01</td>
                                    <td>17.02.10</td>
                                    <td>459</td>
                                    <td>928</td>
                                </tr>
                                <tr>
                                    <td>Alvin</td>
                                    <td>11</td>
                                    <td>Computer</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>VS</td>
                                    <td>16.08.03</td>
                                    <td>16.12.04</td>
                                    <td>239</td>
                                    <td>1923</td>
                                </tr>
                                <tr>
                                    <td>Kevin</td>
                                    <td>66</td>
                                    <td>Culture</td>
                                   <td>iMac vs SAMSUNG PC</td>
                                    <td>MULTI</td>
                                    <td>16.06.02</td>
                                    <td>16.12.31</td>
                                    <td>912</td>
                                    <td>9348</td>
                                </tr>
                                <tr>
                                    <td>Lisa</td>
                                    <td>29</td>
                                    <td>Society</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.02.03</td>
                                    <td>16.12.13</td>
                                    <td>573</td>
                                    <td>3958</td>
                                </tr>
                                <tr>
                                    <td>GD</td>
                                    <td>49</td>
                                    <td>IT</td>
                                 <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.03.01</td>
                                    <td>17.02.10</td>
                                    <td>459</td>
                                    <td>928</td>
                                </tr>
                                <tr>
                                    <td>Alvin</td>
                                    <td>63</td>
                                    <td>Computer</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>VS</td>
                                    <td>16.08.03</td>
                                    <td>16.12.04</td>
                                    <td>239</td>
                                    <td>1923</td>
                                </tr>
                                <tr>
                                    <td>Kevin</td>
                                    <td>54</td>
                                    <td>Culture</td>
                                      <td>iMac vs SAMSUNG PC</td>
                                    <td>MULTI</td>
                                    <td>16.06.02</td>
                                    <td>16.12.31</td>
                                    <td>912</td>
                                    <td>9348</td>
                                </tr>
                                <tr>
                                    <td>Lisa</td>
                                    <td>25</td>
                                    <td>Society</td>
                                      <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.02.03</td>
                                    <td>16.12.13</td>
                                    <td>573</td>
                                    <td>3958</td>
                                </tr>
                                <tr>
                                    <td>GD</td>
                                    <td>27</td>
                                    <td>IT</td>
                                   <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.03.01</td>
                                    <td>17.02.10</td>
                                    <td>459</td>
                                    <td>928</td>
                                </tr>
                                <tr>
                                    <td>Alvin</td>
                                    <td>88</td>
                                    <td>Computer</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>VS</td>
                                    <td>16.08.03</td>
                                    <td>16.12.04</td>
                                    <td>239</td>
                                    <td>1923</td>
                                </tr>
                                <tr>
                                    <td>Kevin</td>
                                    <td>23</td>
                                    <td>Culture</td>
                                       <td>iMac vs SAMSUNG PC</td>
                                    <td>MULTI</td>
                                    <td>16.06.02</td>
                                    <td>16.12.31</td>
                                    <td>912</td>
                                    <td>9348</td>
                                </tr>
                                <tr>
                                    <td>Lisa</td>
                                    <td>17</td>
                                    <td>Society</td>
                                     <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.02.03</td>
                                    <td>16.12.13</td>
                                    <td>573</td>
                                    <td>3958</td>
                                </tr>
                                <tr>
                                    <td>GD</td>
                                    <td>13</td>
                                    <td>IT</td>
                                   <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.03.01</td>
                                    <td>17.02.10</td>
                                    <td>459</td>
                                    <td>928</td>
                                </tr>
                                <tr>
                                    <td>Alvin</td>
                                    <td>47</td>
                                    <td>Computer</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>VS</td>
                                    <td>16.08.03</td>
                                    <td>16.12.04</td>
                                    <td>239</td>
                                    <td>1923</td>
                                </tr>
                                <tr>
                                    <td>Kevin</td>
                                    <td>64</td>
                                    <td>Culture</td>
                                      <td>iMac vs SAMSUNG PC</td>
                                    <td>MULTI</td>
                                    <td>16.06.02</td>
                                    <td>16.12.31</td>
                                    <td>912</td>
                                    <td>9348</td>
                                </tr>
                                <tr>
                                    <td>Lisa</td>
                                    <td>39</td>
                                    <td>Society</td>
                                     <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.02.03</td>
                                    <td>16.12.13</td>
                                    <td>573</td>
                                    <td>3958</td>
                                </tr>
                                <tr>
                                    <td>GD</td>
                                    <td>29</td>
                                    <td>IT</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>YN</td>
                                    <td>16.03.01</td>
                                    <td>17.02.10</td>
                                    <td>459</td>
                                    <td>928</td>
                                </tr>
                                <tr>
                                    <td>Alvin</td>
                                    <td>23</td>
                                    <td>Computer</td>
                                    <td>iMac vs SAMSUNG PC</td>
                                    <td>VS</td>
                                    <td>16.08.03</td>
                                    <td>16.12.04</td>
                                    <td>239</td>
                                    <td>1923</td>
                                </tr>
                              
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--   ì¬ê¸°ë¶í° FEED       -->
        <div id="Feed" class="col s12">
            <div class="row">
                <div id="admin" class="col s12">
                    <div class="card material-table">
                        <div class="table-header"> <span class="table-title">FEED</span>
                            <div class="actions"> <a href="#add_users" class="modal-trigger waves-effect btn-flat nopadding"><i
									class="material-icons">person_add</i></a> <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i
									class="material-icons">search</i></a> </div>
                        </div>
                        <table id="datatable">
                            <thead>
                                <tr>
                                    <th data-field="UserName">UserName</th>
                                    <th data-field="FeedSubject">FeedSubject</th>
                                    <th data-field="Content">Content</th>
                                    <th data-field="Date">Date</th>
                                    <th data-field="Check">Check</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Alvin</td>
                                    <td>PickFormError</td>
                                  <td>iMac vs SAMSUNG PC</td>
                                    <td>16.11.01</td>
                                    <td>NO</td>
                                </tr>
                             
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--     íìê´ë¦¬    -->
        <div id="UserInfo" class="col s12">
            <div class="row">
                <div id="admin" class="col s12">
                    <div class="card material-table">
                        <div class="table-header"> <span class="table-title">USER</span>
                            <div class="actions"> <a href="#add_users" class="modal-trigger waves-effect btn-flat nopadding"><i
									class="material-icons">person_add</i></a> <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i
									class="material-icons">search</i></a> </div>
                        </div>
                        <table id="datatable">
                            <thead>
                                <tr>
                                 
                                    <th data-field="Email">Email</th>
                                    <th data-field="Name">Name</th>
                                    <th data-field="Gender">Gender</th>
                                    <th data-field="Age">Age</th>
                                    <th data-field="Interesting">Interesting</th>
                                    <th data-field="Password">Password</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                            
                                    <td>bradcha85@gmail.com</td>
                                    <td>이름</td>
                                    <td>성별</td>
                                    <td>32</td>
                                    <td>관심사</td>
 								  <td>12345</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--ì¹´íê³ ë¦¬ëª©ë¡ ë° ì¶ê°íê¸° -->
        <div id="Category" class="col s12">
            <div class="row">
                <div id="admin" class="col s12">
                    <div class="card material-table">
                        <div class="table-header"> <span class="table-title">Category</span>
                            <div class="actions"> <a href="#modal1" class="modal-trigger waves-effect btn-flat nopadding"><i
									class="material-icons" id="cat">person_add</i></a> <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i
									class="material-icons">search</i></a> </div>
                        </div>
                        <table id="datatable">
                            <thead>
                                <tr>
                                    <th data-field="#">#</th>
                                    <th data-field="Email">Category</th>
                                    <th data-field="Age">Image</th>
                                    <th data-field="Gender">Pick</th>
                                    <th data-field="Gender">Count</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Health</td>
                                    <td>image</td>
                                    <td>pci</td>
                                    <td>32</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Trigger -->
        <!-- Modal Structure -->
        <div id="modal1" class="modal">
            <div class="modal-content">
                <div class="form">
                    <div>
                        <h1 id="my">ADD</h1>
                        <h1 id="account">Category</h1> </div>
                    <div class="preview img-wrapper"></div>
                    <div class="file-upload-wrapper">
                        <input type="file" name="file" class="file-upload-native" accept="image/*" />
                        <input type="text" disabled placeholder="upload" class="file-upload-text" /> </div>
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="icon_prefix" type="text" class="validate">
                                    <label for="icon_prefix">Category Name</label>
                                </div>
                            </div>
                            <center>
                                <button class="btn waves-effect waves-light" type="submit" name="action"> A D D <i class="material-icons right">send</i> </button>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
         
        </div>
    </div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>-->
    <script src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <script src="adminPage.js"></script>
  
</body>

</html>