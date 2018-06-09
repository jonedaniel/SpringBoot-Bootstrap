<!DOCTYPE html>
<html>
<head>
    <title>花木之家</title>
    <link rel="icon" type="image/x-icon" href="${ctx}/favicon.ico">
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
    <link href="${ctx}/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic'
          rel='stylesheet' type='text/css'>
    <!--Custom-Theme-files-->
    <link href="${ctx}/css/style.css" rel='stylesheet' type='text/css'/>
    <script src="${ctx}/js/jquery.min.js"></script>
    <!--/script-->
    <script type="text/javascript" src="${ctx}js/move-top.js"></script>
    <script type="text/javascript" src="${ctx}js/easing.js"></script>
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
    <div class="col-md-3 top-nav">
        <#include "common/top-nav.ftl" />
    </div>
    <div class="col-md-9 main">
        <!--banner-section-->
        <div class="banner-section">
            <h3 class="tittle">自有树 <i class="glyphicon glyphicon-picture"></i></h3>
            <div class="banner">
                <div class="callbacks_container">
                    <ul class="rslides" id="slider4">
                         <#list list as tree>
                         <li>
                             <img src="images/${tree.name}1.jpg" class="img-responsive" alt="${tree.name}" height="500" width="500"/>
                         </li>
                         </#list>
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
                    <h5 class="top"><a href="${ctx}/single">您最需要哪种花木？点击查看详情</a></h5>
                    <p>${now?date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a><a
                            class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a
                            class="span_link" href="${ctx}/single"><span
                            class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                </div>
            </div>
            <!--//banner-->
            <!--/top-news-->
            <div class="top-news">
                <div class="top-inner">
                    <div class="col-md-6 top-text">
                        <a href="${ctx}/single?name=垂丝海棠"><img src="images/垂丝海棠1.jpg" class="img-responsive" alt="垂丝海棠"></a>
                        <h5 class="top"><a href="${ctx}/single">垂丝海棠</a></h5>
                        <p>感兴趣，请联系我们</p>
                        <p>${now?date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                        </a><a class="span_link" hrsef="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a
                                class="span_link" href="${ctx}/single?name=垂丝海棠"><span
                                class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                    </div>
                    <div class="col-md-6 top-text two">
                        <a href="${ctx}/single?name=樱花"><img src="images/樱花2.jpg" class="img-responsive" alt=""></a>
                        <h5 class="top"><a href="${ctx}/single">樱花</a></h5>
                        <p>感兴趣，请联系我们</p>
                        <p>${now?date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                        </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a
                                class="span_link" href="${ctx}/single?name=樱花"><span
                                class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="top-inner second">
                    <div class="col-md-6 top-text">
                        <a href="${ctx}/single?name=紫薇"><img src="images/紫薇3.jpg" class="img-responsive" alt=""></a>
                        <h5 class="top"><a href="${ctx}/single">紫薇</a></h5>
                        <p>感兴趣，请联系我们</p>
                        <p>${now?date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                        </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a
                                class="span_link" href="${ctx}/single?name=紫薇"><span
                                class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                    </div>
                    <div class="col-md-6 top-text two">
                        <a href="${ctx}/single?name=南栾树"><img src="images/南栾树1.jpg" class="img-responsive" alt=""></a>
                        <h5 class="top"><a href="${ctx}/single">南栾树</a></h5>
                        <p>感兴趣，请联系我们</p>
                        <p>${now?date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
                        </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a
                                class="span_link" href="${ctx}/single?name=南栾树"><span
                                class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!--//top-news-->
        </div>
        <!--//banner-section-->
        <div class="copyrights">开发者 <a href="https://github.com/jonedaniel">github</a></div>
        <div class="banner-right-text">
            <h3 class="tittle">新闻 <i class="glyphicon glyphicon-facetime-video"></i></h3>
            <!--/general-news-->
            <div class="general-news">
                <div class="general-inner">
                    <div class="general-text">
                        <a href="${ctx}/single"><img src="images/gen1.jpg" class="img-responsive" alt=""></a>
                        <h5 class="top"><a href="${ctx}/single">花木名称：</a></h5>
                        <p>感兴趣，请联系我们</p>
                        <p>${now?date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
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
                                <h5 class="inner two"><a href="${ctx}/single">最新花木信息</a>
                                </h5>
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
                                <h5 class="inner two"><a href="${ctx}/single">最新花木信息</a>
                                </h5>
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
                                <h5 class="inner two"><a href="${ctx}/single">最新花木信息</a>
                                </h5>
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
                                <h5 class="inner two"><a href="${ctx}/single">最新花木信息</a>
                                </h5>
                                <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
                                        href="#"><i class="glyphicon glyphicon-comment"></i>0 </a></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="media">
                        <h3 class="tittle media">媒体 <i class="glyphicon glyphicon-floppy-disk"></i></h3>
                        <div class="general-text two">
                            <a href="${ctx}/single"><img src="images/gen3.jpg" class="img-responsive" alt=""></a>
                            <h5 class="top"><a href="${ctx}/single">花木名称：</a></h5>
                            <p>最新花木信息</p>
                            <p>${now?date} <a class="span_link" href="#"><span
                                    class="glyphicon glyphicon-comment"></span>0
                            </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56
                            </a><a class="span_link" href="${ctx}/single"><span
                                    class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
                        </div>
                    </div>
                    <div class="general-text two">
                        <a href="${ctx}/single"><img src="images/gen2.jpg" class="img-responsive" alt=""></a>
                        <h5 class="top"><a href="${ctx}/single">花木名称：</a></h5>
                        <p>感兴趣，请联系我们</p>
                        <p>${now?date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0
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