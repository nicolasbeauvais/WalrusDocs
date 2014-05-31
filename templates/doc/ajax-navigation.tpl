<h5>Ajax navigation</h5>

<p>
    <strong>Walrus</strong> provide a 100% automated ajax navigation, you just need to
    include <strong>Walrus</strong>.js to your project:
</p>

<pre class="brush: php">
    &lt;script src="www/assets/javascript/Walrus.js"&gt;&lt;/script&gt;
</pre>

<p>And then set the ajax Navigation to true with:</p>

<pre class="brush: javascript">
    Walrus.init({
        ajaxNavigation: true
    });
</pre>

<h6>Listen the page change</h6>

<p>Every time a page is loaded with the ajax navigation, <strong>Walrus</strong>.js fire a
   <span class="bold">pageLoaded</span> event on <span class="bold">document</span>. <br/>
   Basically if you use jQuery you can just use this to execute your code everytime
   a page is loaded:</p>

<pre class="brush: javascript">
    $(document).on('pageLoaded', function () {
        //your javascript code
    });
</pre>

<h6>Open a new page with Ajax navigation</h6>

<p>If you have a custom url generated with a script you can load the page with the
    <span class="bold">go</span> method like so:</p>

<pre class="brush: javascript">
    Walrus.go(pageUrl, isBack, callback);
</pre>

<ul>
    <li><span class="bold">pageUrl:</span> a formatted url</li>
    <li><span class="bold">isBack:</span> equal to a page return</li>
    <li><span class="bold">callback:</span> a callback function executed at the end of the ajax request</li>
</ul>
