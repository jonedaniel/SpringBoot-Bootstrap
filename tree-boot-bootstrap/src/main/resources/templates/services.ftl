<!DOCTYPE HTML>
<html>
<head>
    <title>Services</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Blogger Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android  Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic'
          rel='stylesheet' type='text/css'>
    <!--Custom-Theme-files-->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <script src="js/jquery.min.js"></script>
    <!--/script-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 900);
            });
        });
    </script>

</head>
<body>
<!-- header-section-starts -->
	<#include "common/home.ftl" />
<div class="full">
    <div class="col-md-3 top-nav services">
	<#include "common/top-nav.ftl" />
    </div>
    <div class="col-md-9 main">
        <!--banner-section-->
        <div class="banner-section">
            <h3 class="tittle">General <i class="glyphicon glyphicon-picture"></i></h3>
            <div class="banner">
                <div class="callbacks_container">
                    <ul class="rslides" id="slider4">
                        <li>
                            <img src="images/1.jpg" class="img-responsive" alt=""/>

                        </li>
                        <li>
                            <img src="images/2.jpg" class="img-responsive" alt=""/>


                        </li>
                        <li>
                            <img src="images/3.jpg" class="img-responsive" alt=""/>


                        </li>
                        <li>
                            <img src="images/3.jpg" class="img-responsive" alt=""/>


                        </li>
                    </ul>
                </div>
                <!--banner-->
                <script src="js/responsiveslides.min.js"></script>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider4").responsiveSlides({
                            auto: true,
                            pager: true,
                            nav: true,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });

                    });
                </script>
                <div class="clearfix"></div>
                <div class="b-bottom">
                    <h5 class="top"><a href="${ctx}/single">What turn out consetetur sadipscing elit</a></h5>
                    <p>On Aug 25 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a><a
                            class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a
                            class="span_link" href="${ctx}/single"><span
                            class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                </div>
            </div>
            <!--//banner-->
            <!--/top-news-->
            <div class="top-news">
                <h3 class="tittle">Services <i class="glyphicon glyphicon-cog"></i></h3>
                <div class="top-inner">
                    <div class="col-md-6 top-text">
                        <a href="${ctx}/single"><img src="images/pic2.jpg" class="img-responsive"
                                                             alt=""></a>
                        <div class="ser">
                            <h5 class="top"><a href="${ctx}/single">Consetetur sadipscing elit</a></h5>
                            <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna
                                aliquyam eratsed diam justo duo dolores rebum.</p>
                            <p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                            </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56
                            </a><a class="span_link" href="${ctx}/single"><span
                                    class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                        </div>
                    </div>
                    <div class="col-md-6 top-text two">
                        <a href="${ctx}/single"><img src="images/pic1.jpg" class="img-responsive"
                                                             alt=""></a>
                        <div class="ser">
                            <h5 class="top"><a href="${ctx}/single">Consetetur sadipscing elit</a></h5>
                            <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna
                                aliquyam eratsed diam justo duo dolores rebum.</p>
                            <p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                            </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56
                            </a><a class="span_link" href="${ctx}/single"><span
                                    class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="top-inner second">
                    <div class="col-md-6 top-text">
                        <a href="${ctx}/single"><img src="images/pic3.jpg" class="img-responsive"
                                                             alt=""></a>
                        <div class="ser">
                            <h5 class="top"><a href="${ctx}/single">Consetetur sadipscing elit</a></h5>
                            <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna
                                aliquyam eratsed diam justo duo dolores rebum.</p>
                            <p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                            </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56
                            </a><a class="span_link" href="${ctx}/single"><span
                                    class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                        </div>
                    </div>
                    <div class="col-md-6 top-text two">
                        <a href="${ctx}/single"><img src="images/pic4.jpg" class="img-responsive"
                                                             alt=""></a>
                        <div class="ser">
                            <h5 class="top"><a href="${ctx}/single">Consetetur sadipscing elit</a></h5>
                            <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna
                                aliquyam eratsed diam justo duo dolores rebum.</p>
                            <p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                            </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56
                            </a><a class="span_link" href="${ctx}/single"><span
                                    class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!--//top-news-->
        </div>
        <!--//banner-section-->
        <div class="banner-right-text">
            <h3 class="tittle">News <i class="glyphicon glyphicon-facetime-video"></i></h3>
            <!--/general-news-->
            <div class="general-news">
                <div class="general-inner">
                    <div class="general-text">
                        <a href="${ctx}/single"><img src="images/gen5.jpg" class="img-responsive"
                                                             alt=""></a>
                        <h5 class="top"><a href="${ctx}/single">Consetetur sadipscing elit</a></h5>
                        <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna
                            aliquyam eratsed diam justo duo dolores rebum.</p>
                        <p>On Jun 25 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                        </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a
                                class="span_link" href="${ctx}/single"><span
                                class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                    </div>
                    <div class="edit-pics">
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/f4.jpg" class="img-responsive" alt="">

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two"><a href="${ctx}/single">New iPad App to simulate your
                                    Guitar</a></h5>
                                <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
                                        href="#"><i class="glyphicon glyphicon-comment"></i>0 </a></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/f1.jpg" class="img-responsive" alt="">

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two"><a href="${ctx}/single">New iPad App to simulate your
                                    Guitar</a></h5>
                                <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
                                        href="#"><i class="glyphicon glyphicon-comment"></i>0 </a></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/f1.jpg" class="img-responsive" alt="">

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two"><a href="${ctx}/single">New iPad App to simulate your
                                    Guitar</a></h5>
                                <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
                                        href="#"><i class="glyphicon glyphicon-comment"></i>0 </a></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/f4.jpg" class="img-responsive" alt="">

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two"><a href="${ctx}/single">New iPad App to simulate your
                                    Guitar</a></h5>
                                <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
                                        href="#"><i class="glyphicon glyphicon-comment"></i>0 </a></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="media">
                        <h3 class="tittle media">Media <i class="glyphicon glyphicon-floppy-disk"></i></h3>
                        <div class="general-text two">
                            <a href="${ctx}/single"><img src="images/gen4.jpg" class="img-responsive"
                                                                 alt=""></a>
                            <h5 class="top"><a href="${ctx}/single">Consetetur sadipscing elit</a></h5>
                            <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna
                                aliquyam eratsed diam justo duo dolores rebum.</p>
                            <p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                            </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56
                            </a><a class="span_link" href="${ctx}/single"><span
                                    class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                        </div>
                    </div>
                    <div class="general-text two">
                        <a href="${ctx}/single"><img src="images/gen6.jpg" class="img-responsive"
                                                             alt=""></a>
                        <h5 class="top"><a href="${ctx}/single">Consetetur sadipscing elit</a></h5>
                        <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna
                            aliquyam eratsed diam justo duo dolores rebum.</p>
                        <p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                        </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a
                                class="span_link" href="${ctx}/single"><span
                                class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                    </div>
                </div>
            </div>
            <!--//general-news-->
            <!--/news-->
            <!--/news-->
        </div>
        <#include "common/footer.ftl" />
    </div>
    <div class="clearfix"></div>
</div>
<!--//footer-->
<!--start-smooth-scrolling-->
<script type="text/javascript">
    $(document).ready(function () {
        /*
        var defaults = {
              containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
         };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover"
                                                                         style="opacity: 1;"> </span></a>


</body>
</html>