<h5>Nolink</h5>

<p>
    To make SEO easier Walrus provide builtin methode to help you create simple nolink.
    You just need to include <strong>Walrus</strong>.js to your project:
</p>

<pre class="brush: php">
    &lt;script src="www/assets/javascript/Walrus.js"&gt;&lt;/script&gt;
</pre>

<p>And then set the nolink parsing to true with:</p>

<pre class="brush: javascript">
    Walrus.init({
        nolink: true
    });
</pre>

<p>All html tag with a data-nolink attribute will be considered as nolink, the data-nolink
    attribute as to be a base64 valid url. You can generate it easily with the Walrus Url
    <a href="/doc/helpers">Helper</a></p>

<p>Simple example:</p>
<pre class="brush: php">
    <div data-nolink="aHR0cDovL3d3dy5nb29nbGUuY29t">Visit google.com</div>
</pre>

<p>Example using Walrus Url Helper and smarty templating:</p>
{literal}
<pre class="brush: php">
    &lt;div {$helpers['Url']-&gt;nolink('http://google.com')}&gt;Visit google.com&lt;/div&gt;
</pre>
{/literal}