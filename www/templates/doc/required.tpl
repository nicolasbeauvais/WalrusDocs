<h5>Title in h5</h5>

<p>Lorem ipsum <span class="bold">dolor</span> sit amet, consectetur adipiscing elit.
   Vestibulum mollis leo eget arcu lacinia facilisis. Nullam
   vitae felis neque. Aenean sem erat, pretium id condimentum a,
   tristique auctor elit. Duis turpis nisi, interdum eleifend
   feugiat sed, malesuada nec tortor. Nam a convallis nunc.
   Donec non turpis pharetra, mattis sapien a, pulvinar sem.
   Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p>

<h6>Title in h6</h6>

<p>Lorem ipsum <span class="bold">dolor</span> sit amet, consectetur adipiscing elit.
    Vestibulum mollis leo eget arcu lacinia facilisis. Nullam
    vitae felis neque. Aenean sem erat, pretium id condimentum a,
    tristique auctor elit. Duis turpis nisi, interdum eleifend
    feugiat sed, malesuada nec tortor. Nam a convallis nunc.
    Donec non turpis pharetra, mattis sapien a, pulvinar sem.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p>

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
