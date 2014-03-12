<footer id="footer">
    <div class="container">
        <span class="copy"><strong>Walrus</strong> &copy; copyright 2014</span>
        <ul>
            <li><a href="{$_ENV['W']['base_url']}">Welcome</a></li>
            <li><a href="{$_ENV['W']['base_url']}doc">Documentation</a></li>
            <li><a href="{$_ENV['W']['base_url']}">API</a></li>
            <li><a href="https://github.com/E-Wok/Walrus/" target="_blank">GitHub</a></li>
        </ul>
    </div>
</footer>

<script src="{$_ENV['W']['base_url']}assets/javascript/jquery-2.0.0.min.js"></script>
<script src="{$_ENV['W']['base_url']}assets/javascript/Walrus.js"></script>
<script src="{$_ENV['W']['base_url']}assets/javascript/shCore.js"></script>
<script src="{$_ENV['W']['base_url']}assets/javascript/shBrushJScript.js"></script>
<script src="{$_ENV['W']['base_url']}assets/javascript/shBrushPhp.js"></script>
<script src="{$_ENV['W']['base_url']}assets/javascript/shBrushSql.js"></script>
<script src="{$_ENV['W']['base_url']}assets/javascript/shBrushYaml.js"></script>
<script src="{$_ENV['W']['base_url']}assets/javascript/script.js"></script>
{literal}
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-29129365-6', 'walrus-framework.com');
    ga('send', 'pageview');
</script>
{/literal}
</body>
</html>