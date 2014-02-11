<h5>Ajax navigation</h5>

<p>
    Walrus provide a 100% automated ajax navigation, you just need to
    include Walrus.js to your project:
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

<p>Every time a page is loaded with the ajax navigation, Walrus.js fire a
   <span class="bold">pageLoaded</span> event on <span class="bold">document</span>. <br/>
   Basically if you use jQuery you can just use this to execute your code everytime
   a page is loaded:</p>

<pre class="brush: javascript">
    $(document).on('pageLoaded', function () {
        //your javascript code
    });
</pre>