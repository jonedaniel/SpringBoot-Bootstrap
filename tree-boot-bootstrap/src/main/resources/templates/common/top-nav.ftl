
    <div class="logo">
        <a href="index.html"><h1>花木之家</h1></a>
    </div>
    <div class="top-menu">
        <span class="menu"> </span>

        <ul class="cl-effect-16">
            <li><a class="active" href="${ctx}/index" data-hover="HOME">主页</a></li>
            <li><a href="${ctx}/about" data-hover="About">关于我们</a></li>
            <li><a href="${ctx}/grid" data-hover="Grids">列表</a></li>
            <li><a href="${ctx}/services" data-hover="Services">服务</a></li>
            <li><a href="${ctx}/gallery" data-hover="Gallery">图库</a></li>
            <li><a href="${ctx}/contact" data-hover="CONTACT">联系我们</a></li>
        </ul>
        <!-- script-for-nav -->
        <script>
            $("span.menu").click(function () {
                $(".top-menu ul").slideToggle(300, function () {
                    // Animation complete.
                });
            });
        </script>
        <!-- script-for-nav -->
        <ul class="side-icons">
            <li><a class="fb" href="#"></a></li>
            <li><a class="twitt" href="#"></a></li>
            <li><a class="goog" href="#"></a></li>
            <li><a class="drib" href="#"></a></li>
        </ul>
    </div>