<div id="container">

<div class="container">
    <div id="sidebar">
        <h4>Basics</h4>
        <ul>
            <li><a href="{$smarty.const.URL}doc/required">Required</a></li>
            <li><a href="{$smarty.const.URL}doc/installation">Installation</a></li>
            <li><a href="{$smarty.const.URL}doc/getting-started">Getting started</a></li>
        </ul>
        <h4>Back-end</h4>
        <ul>
            <li><a href="{$smarty.const.URL}doc/routing">Routing</a></li>
            <li><a href="{$smarty.const.URL}doc/cli">CLI tools</a></li>
            <li><a href="{$smarty.const.URL}doc/controllers">Controllers</a></li>
            <li><a href="{$smarty.const.URL}doc/models">Models</a></li>
            <li><a href="{$smarty.const.URL}doc/api-and-long-polling">API & long polling</a></li>
        </ul>
        <h4>Front-end</h4>
        <ul>
            <li><a href="{$smarty.const.URL}doc/skeleton">Skeleton</a></li>
            <li><a href="{$smarty.const.URL}doc/ajax-navigation">AJAX navigation</a></li>
            <li><a href="{$smarty.const.URL}doc/lazyload">Lazyload</a></li>
            <li><a href="{$smarty.const.URL}doc/front-long-polling">Long polling</a></li>
        </ul>
    </div>
    <div id="doc-content">
        {$documentation}
    </div>
    <div class="clear"></div>
</div>

</div>