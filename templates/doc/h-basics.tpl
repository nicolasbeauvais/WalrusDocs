<h1>Helpers</h1>

<p>
    Helpers are a simple way to add features to <strong>Walrus Framework</strong>,
    all helpers are in the <span class="bold">Walrus/core/helpers/</span> directory
</p>

<h6>Using Helpers</h6>

<p>To use a Helper in your controller or model you can use the getHelper method,
    the first parameter is the helper name and the second is a boolean to make
    the function return a new instance of the helper or an already instantiated
    one if it exist</p>


<pre class="brush: php">
    WalrusHelpers::getHelper('name', true);
</pre>

<p>To call a helper from your template you need to use the $helpers variable which is
    an array containing an instance of all the helpers</p>

<p>Plain PHP example</p>

{literal}
<pre class="brush: php">
    $helpers['name']->method();
</pre>

<p>Smarty example</p>
<pre class="brush: php">
    {$helpers.name->method()}
</pre>
{/literal}

<h6>Creating a Helper</h6>

<p>To create your own helper use this basic syntax</p>
<pre class="brush: php">
    namespace Walrus\core\helpers;

    /**
     * Class Test
     * @package Walrus\core\helpers
     */
    class Test
    {

        public function makeTest()
        {

        }
    }

</pre>

<p>Your helper as to be in the <span class="bold">Walrus/core/helpers/</span>
    directory and should appear in the helpers list in the
    <span class="bold">Walrus/core/WalrusHelpers.php</span> file</p>

<p>The type of a helper is as follow</p>

<ul>
    <li><span class="strong">0</span> accessibility from backend and frontend</li>
    <li><span class="strong">1</span> accessibility from backend only (controllers/models)</li>
    <li><span class="strong">2</span> accessibility from frontend only (views/templates)</li>
</ul>

<pre class="brush: php">
    /**
     * Register all Helpers to load.
     *
     * A helper name should pass this regex: [A-Za-z_]+
     */
    private static $helpers = array(
        'HelperName' => array('class' => 'HelperClass','type' => 0),
    );
</pre>