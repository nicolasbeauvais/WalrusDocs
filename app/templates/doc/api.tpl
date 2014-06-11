<h5>Walrus API</h5>

<p><strong>Walrus</strong> provide you a simple way to make your own API, every route begining with
   <span class="bold">api/</span> will be redirected to a controller in
   <span class="bold">engine/api/</span><br/>
   Using the <strong>Walrus</strong> API is way faster than the normal routing, it's great for all your ajax call when you use it as an
   internal API for example</p>

Here is the route pattern:

<pre class="brush: php">
    /api/controller/action/
</pre>

<p>The <strong>Walrus</strong> API tools handle for you HTTP response, the only available output is JSON for now</p>

<h6>API controller</h6>

<p>You can create a new API controller with the <a href="{$url}cli"><strong>Walrus</strong> CLI</a>, or create it yourself with
    this basic syntax:</p>

{literal}
<pre class="brush: php">
    &lt;?php

    namespace engine\api;

    use Walrus\core\WalrusAPI;

    class PollingController extends WalrusAPI
    {
        public function run()
        {
            return $data;
        }
    }
</pre>
{/literal}

<p>The api has the same <span class="bold">action</span> and <span class="bold">model</span> method as a normal
    <a href="{$url}controllers">controller</a></p>

<p>To make an API action you just need to return an array of data, it will be automatically parsed into JSON. <br/>
   For exemple the following controller :</p>

<pre class="brush: php">
    public function run()
    {
        return array('key' => 'value');
    }
</pre>

<p>Will automatically output (if the HTTP response as the 200 status code):</p>

<pre class="brush: javascript">
    {
        status: 200,
        data: {
            key: 'value'
        }
    }
</pre>