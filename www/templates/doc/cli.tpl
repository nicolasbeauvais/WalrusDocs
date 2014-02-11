<h5>CLI (Command Line Interface) a.k.a Tusk</h5>

<p>We added to Walrus a simple tool in order to generate few things that we usually do not like to do
   because it is simply repetitive like models and controllers.</p>
<p>There's only one thing you need in order to use Tusk : be at your root folder. This is simply because Tusk is at the root of Walrus.</p>

<h6>Let's create a model !</h6>

<pre class="brush: php">
    php tusk createModel Test
</pre><br/>

<p>Here we simply call the createModel action that will generate a Model with the Name we previously
   gave to Tusk.Keep in mind that a model name has an uppercased first letter.</p>
<p>It will render something like this :</p>

<pre class="brush: php">
    namespace engine\models;

    use R;

    class Test
    {

    }
</pre><br/>

<h6>Let's create a controller !</h6>

<pre class="brush: php">
    php tusk createController test
</pre><br/>

<p>Exactly the same as a model but we now call the createController method. Note that a controller name
   has no uppercased first letter.</p>

<pre class="brush: php">
    namespace engine\controllers;

    use Walrus\core\WalrusFrontController as WalrusFrontController;

    class testController extends WalrusFrontController
    {

    }
</pre><br/>

<h6>Note :</h6>
<p>If you are lost you still can type :</p>
<pre class="brush: php">
    php tusk
</pre><br/>
<p>It will display you all the informations you need if you don't know how to use Tusk.</p>