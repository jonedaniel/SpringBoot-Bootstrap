<!DOCTYPE HTML>
<html>
<head>
    <title>Contact</title>
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
<#include "common/home.ftl"/>
<div class="full">
    <div class="col-md-3 top-nav contact">
        <#include "common/top-nav.ftl" />
    </div>
    <!-- contact -->
    <div class="col-md-9 main">
        <div class="contact">
            <h3 class="tittle">找到我们 <i class="glyphicon glyphicon-map-marker"></i></h3>
            <div class="contact-left">
                <#--<iframe src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Purwokerto,+Central+Java,+Indonesia&amp;aq=0&amp;oq=purwo&amp;sll=37.0625,-95.677068&amp;sspn=50.291089,104.238281&amp;ie=UTF8&amp;hq=&amp;hnear=Purwokerto,+Banyumas,+Central+Java,+Indonesia&amp;ll=-7.431391,109.24783&amp;spn=0.031022,0.050898&amp;t=m&amp;z=14&amp;output=embed"></iframe>-->
                <iframe src="http://apis.map.qq.com/tools/poimarker?type=0&marker=coord:33.89554,114.26387;title:花木种植园;addr:河南省鄢陵县南坞镇&key=OB4BZ-D4W3U-B7VVO-4PJWW-6TKDJ-WPB77&referer=myapp"></iframe>
            </div>
            <div class="contact-right">
                <p class="phn">13598957388</p>
                <p class="phn-bottom">南坞村健康路
                    <span>河南省许昌市鄢陵县南坞乡</span></p>
                <p class="lom">鄢陵是我国典型的南方气候型和北方气候型的过渡地区，
                    是南花北移、北花南迁，南北花卉引种、驯化的理想基地，也是沟通南北花卉的桥梁和纽带。
                    其区位优势、气候特点、土壤条件的优越，
                    加上当地科技开发及综合服务使得鄢陵花木有一定名气。</p>
            </div>
            <div class="clearfix"></div>
            <div class="contact-left1">
                <h3>联系我们 <span></span></h3>
                <div class="in-left">
                    <form>
                        <p class="your-para">你的 名字:</p>
                        <input type="text" value="" onfocus="this.value='';"
                               onblur="if (this.value == '') {this.value ='';}">
                        <p class="your-para">你的 邮箱 :</p>
                        <input type="text" value="" onfocus="this.value='';"
                               onblur="if (this.value == '') {this.value ='';}">
                        <p class="your-para">手机号码:</p>
                        <input type="text" value="" onfocus="this.value='';"
                               onblur="if (this.value == '') {this.value ='';}">

                    </form>
                </div>
                <div class="in-right">
                    <form>
                        <textarea cols="77" rows="6" onfocus="this.value='';"
                                  onblur="if (this.value == '') {this.value = '';}">留言...</textarea>
                        <input type="submit" value="Submit">
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="contact-right1">
                <h3><span>社交软件</span></h3>
                <h4>Nullam ac urna velit pellentesque in <label>arcu tortor
                    Pellentesque nec</label></h4>
                <p>Nullam ac urna velit. Pellentesque in arcu tortor.
                    Pellentesque nec est et elit varius pulvinar eget vitae sapien.
                    Aenean vehicula accumsan gravida. Cum sociis natoque penatibus
                    et magnis dis parturient montes, nascetur ridiculus mus. Phasellus
                    et lectus in urna consequat consectetur ut eget risus.</p>
                <ul class=" side-icons con">
                    <li><a class="fb" href="#"></a></li>
                    <li><a class="twitt" href="#"></a></li>
                    <li><a class="goog" href="#"></a></li>
                    <li><a class="drib" href="#"></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <!-- //contact -->
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