<h1>Templating</h1>

<p><strong>Walrus</strong>.js is given with a really lightweight but useful templating language,
   First you can create a template in html and specify the javascript data you want in it:</p>

{literal}
<pre class="brush: php">
    <div id="templating">
        <h1>Hello {{name}}</h1>
    </div>
</pre>
{/literal}

<p>Now to change <span class="bold">name</span> to your javascript variable use the <strong>Walrus</strong>.compile()
   function like this:</p>

{literal}
<pre class="brush: javascript">
    var name = 'John';
    var content = document.getElementById('templating').innerHTML;
    var domContent = Walrus.compile(content, name);
</pre>
{/literal}