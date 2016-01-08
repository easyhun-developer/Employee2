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
                <h1 class="page-header"><font size="50">금강수림</font></h1>
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
                                <img class="img-responsive img-full" src="img/korea1/gg.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/korea1/gg2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/korea1/gg3.jpg" alt="">
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
                <h3>금강수림</h3>
                <p>27년이란 세월이 흘러 많은 분들의 사랑과 관심으로 규모가 커지고 금강에서 어획되는 장어,참게,복으로 음식을 하게 되면서 많은 정,제계 인사들과 미식가들로부터 인정을 받으며 전통음식만을 해온 향토음식점입니다.</p>
                <h3>매장안내</h3>
                <ul>
                    <li>주소:서울특별시 강남구 도곡동 953-1<br></li>
                    <ul>SK허브프리모 B2층</ul>
                    <li>call:02-577-9992</li>
                    <li>홈페이지: <a href="http://www.mysoolim.com/">http://www.mysoolim.com/</a></li>
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
                <a href="korea1/itemInfo1.jsp">
                    <img class="img-responsive portfolio-item" src="img/korea1/ss.PNG" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="korea1/itemInfo2.jsp">
                    <img class="img-responsive portfolio-item" src="img/korea1/ss2.PNG" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="korea1/itemInfo3.jsp">
                    <img class="img-responsive portfolio-item" src="img/korea1/ss3.PNG" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="korea1/itemInfo4.jsp">
                    <img class="img-responsive portfolio-item" src="img/korea1/ss4.PNG" alt="">
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
