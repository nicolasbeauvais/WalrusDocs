<h5>Skeleton</h5>

<p>
    Skeleton is a cool features from walrus framework intended for front end developer.
    You can create your skeleton (which are basically view agregation), in the
    <span class="bold">skeleton</span>.yml file in the <span class="bold">config/</span>
    directory
</p>

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

<p>In this example, walrus will execute those template:</p>

<ul>
    <li>www/templates/header/head.?</li>
    <li>www/templates/body/main.?</li>
    <li>www/templates/footer/footer.?</li>
</ul>

<h6>ACL</h6>

<p>In can easily add ACL restriction to the template you usein a skeleton by following specifying
   the ACL parameter for a template</p>

<pre class="brush: yaml">
    _skeleton_name:
        head:
            template: "header/head"
            acl: 'admin'
        footer:
            template: "footer/main"
</pre>