<h1>Skeleton</h1>

<p>
    Skeleton is a cool features from <strong>Walrus</strong> <strong>framework</strong> intended for front end developer.
    You can create your skeleton (which are basically view aggregation), in the
    <span class="bold">config/skeleton/</span> directory
</p>

<p class="note">All configuration YAML files in walrus are parsed to PHP array, you can create all the files you want in the correct
    configuration directory</p>

<h6>Skeleton example</h6>

<p>This is a simple skeleton example:</p>

<pre class="brush: yaml">
    _skeleton_name:
        head:
            template: "header/head"
        body:
            template: "body/main"
        footer:
            template: "footer/footer"
</pre>

<p>In this example, <strong>Walrus</strong> will execute those template:</p>

<ul>
    <li>www/templates/header/head.?</li>
    <li>www/templates/body/main.?</li>
    <li>www/templates/footer/footer.?</li>
</ul>

<h6>ACL</h6>

<p>In can easily add <a href="{$url}acl">ACL</a> restriction to the template you use in a skeleton by following specifying
   the ACL parameter for a template</p>

<pre class="brush: yaml">
    _skeleton_name:
        head:
            template: "header/head"
            acl: 'admin'
        footer:
            template: "footer/main"
</pre>