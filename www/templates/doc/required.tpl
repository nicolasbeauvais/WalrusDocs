<h5>Required</h5>

<p>Walrus can work with different PHP versions.</p>
<p>If you want all the Walrus features, you definitely want to use PHP 5.4.4 or higher. Why this requirement ?
   Basically because Walrus long polling methods are using PHP SessionHandlerInterface.</p>
<p>You still can use PHP 5.3.3 but you will not be able to user Walrus long polling methods.</p>


<h6>ORM</h6>

<p>Walrus is using <a href="http://redbeanphp.com/">RedBean ORM</a>. RedBean works with :
</p>
<ul>
    <li>MySQL 5 and higher</li>
    <li>SQLite 3.6.19 and higher</li>
    <li>PostgreSQL 8 and higher</li>
    <li>CUBRID (since 3.2)</li>
</ul><br/>
<p>Walrus is using RedBean because it's simple to use, lightweight and pretty fast for an ORM. That's why we are using it.
   Here is the documentation of <a href="http://redbeanphp.com/welcome">RedBean</a>.</p>

<h6>PHP demo</h6>
<pre class="brush: php">
    public function doc($doc)
    {
        $this->skeleton('_skeleton_doc');
        $documentation = $this->getSoft('home', 'loadDoc', array($doc));
        $this->register('documentation', $documentation);
    }
</pre>

<h6>Javascript Demo</h6>
<pre class="brush: js; highlight: [4];">
    Walrus.pollingRegister('posts', function (data) {
        var tpl = '', item;
        for (item in data) {
             tpl += Walrus.compile(document.getElementById('templating-msg').innerHTML, data[item]);
        }
        return tpl;
    });

    Walrus.polling('api/polling/run');
</pre>


<h5>TODO</h5>
<ul>
    <li><a href="{$smarty.const.URL}doc/required">Required</a></li>
    <li><a href="{$smarty.const.URL}doc/installation">Installation</a></li>
    <li><a href="{$smarty.const.URL}doc/getting-started">Getting started</a></li>
    <li><a href="{$smarty.const.URL}doc/routing">Routing</a></li>
    <li><a href="{$smarty.const.URL}doc/cli">CLI tools</a></li>
    <li><a href="{$smarty.const.URL}doc/controllers">Controllers</a></li>
    <li><a href="{$smarty.const.URL}doc/models">Models</a></li>
    <li><a href="{$smarty.const.URL}doc/api-and-long-polling">API & long polling</a></li>
    <li><a href="{$smarty.const.URL}doc/skeleton">Skeleton</a></li>
    <li><a href="{$smarty.const.URL}doc/ajax-navigation">AJAX navigation</a></li>
    <li><a href="{$smarty.const.URL}doc/lazyload">Lazyload</a></li>
    <li><a href="{$smarty.const.URL}doc/front-long-polling">Long polling</a></li>
</ul>
