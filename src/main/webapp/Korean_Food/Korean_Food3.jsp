<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Portfolio Item - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/portfolio-item.css" rel="stylesheet">


</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Start Bootstrap</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><font size="50">삼원가든</font></h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-8">
                <!-- <img class="img-responsive" src="http://placehold.it/750x500" alt=""> -->
                
                
                
                <!-- -->
             <div class="box">
                <div class="col-lg-12 text-center">
                    <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive img-full" src="img/korea3/sw5.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/korea3/sw6.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/korea3/sw7.jpg" alt="">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                    <hr class="tagline-divider">
                    <!-- <h2>
                        <small>By
                            <strong>Start Bootstrap</strong>
                        </small>
                    </h2> -->
                </div>
            </div>
                
                
                
                <!-- -->
                
                
                
                
                
                
            </div>

            <div class="col-md-4">
                <h3>삼원가든</h3>
                <p>1976년 국내최대의 고급 한식당으로 오픈한 삼원가든은 도심 속의 자연,도심 속의 휴식공간으로 30여 년간 한국의 전통적인 맛을 고집하며, 우리 고유의 맛과 문화를 세계 속에 전하는 것에 항상 자부심을 갖고 있습니다.</p>
                <h3>매장안내</h3>
                <ul>
                    <li>본점:서울특별시 강남구 신사동 623-5</li>
                    <li>대치점:서울특별시 강남구 대치2동 993-1</li>
                    <li>call:02-548-3030</li>
                    <li>홈페이지: <a href="http://www.samwongarden.com/">http://www.samwongarden.com/</a></li>
                </ul>
            </div>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">Best Menu</h3>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="korea3/itemInfo1.jsp">
                    <img class="img-responsive portfolio-item" src="img/korea3/sw1.PNG" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="korea3/itemInfo2.jsp">
                    <img class="img-responsive portfolio-item" src="img/korea3/sw2.PNG" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="korea3/itemInfo3.jsp">
                    <img class="img-responsive portfolio-item" src="img/korea3/sw3.PNG" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="korea3/itemInfo4.jsp">
                    <img class="img-responsive portfolio-item" src="img/korea3/sw4.PNG" alt="">
                </a>
            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
