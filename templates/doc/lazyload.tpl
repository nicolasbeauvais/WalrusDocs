<h5>Lazyload</h5>

<p>
    <strong>Walrus</strong> give you the possibility to do lazyload in a very simple way, and so optimise your
    SEO. <br/>
    First you need to include <strong>Walrus</strong>.js to your project: </p>

<pre class="brush: php">
    &lt;script src="www/assets/javascript/Walrus.js"&gt;&lt;/script&gt;
</pre>

<p>And then set the lazyload to true with:</p>

<pre class="brush: javascript">
    Walrus.init({
        lazyload: true
    });
</pre>

<p>Now to lazyload a part of your website you just have to specify the data-lazyload attribute
   to an HTML tag. </p>

<pre class="brush: php">
    <div data-lazyload="url/to/lazyload"></div>
</pre>