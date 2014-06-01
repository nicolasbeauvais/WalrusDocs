<h1>CLI</h1>

<p>We added to <strong>Walrus</strong> a simple tool in order to generate few things that we usually do not like to do
   because it is simply repetitive like creating models and controllers.</p>

<p>For more informations about deployment instruction check the <a href="/doc/dpeloy">deploy</a> section</p>

<h6>Creating a model</h6>

<pre class="brush: php">
    php tusk createModel Test
</pre><br/>

<p>Here we simply call the createModel action that will generate a Model with the Name we previously
   gave to Tusk. Keep in mind that a model name has an uppercased first letter.</p>
<p>It will render something like this :</p>

<pre class="brush: php">
    namespace engine\models;

    use R;

    class Test
    {

    }
</pre><br/>

<h6>Creating a controller</h6>

<pre class="brush: php">
    php tusk createController test
</pre><br/>

<p>Exactly the same as a model but we now call the createController method. Note that a controller name
   has no uppercased first letter.</p>

<pre class="brush: php">
    namespace engine\controllers;

    use Walrus\core\WalrusController

    class TestController extends WalrusController
    {

    }
</pre><br/>

<h6>Creating an API controller</h6>

<pre class="brush: php">
    php tusk createAPIController test
</pre><br/>

<p>Exactly the same as a controller but we now call the createController method. Note that a controller name
    has no uppercased first letter.</p>

<pre class="brush: php">
    namespace engine\api;

    use Walrus\core\WalrusAPI;

    class testController extends WalrusAPI
    {

    }
</pre><br/>

<h6>Help</h6>
<p>If you are lost you can type :</p>
<pre class="brush: php">
    php tusk
</pre><br/>
<p>It will display you all the informations you need if you don't know how to use Tusk.</p>