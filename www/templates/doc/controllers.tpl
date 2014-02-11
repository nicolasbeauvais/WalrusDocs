<h5>Create a new Controllers</h5>

<p>
   You can create a new controller with the <a href="">Walrus CLI</a>, or create it yourself with
   this basic syntax:
</p>

{literal}
<pre class="brush: php">
    &lt;?php

    namespace engine\controllers;

    use Walrus\core\WalrusFrontController as WalrusFrontController;

    /**
     * Class HomeController
     * @package engine\controllers
     */
    class HomeController extends WalrusFrontController
    {

        public function run()
        {
            echo 'Hello World';
        }
    }
</pre>
{/literal}

<h6>Set view</h6>

<p>The set view function let you specify a template to load.</p>

<pre class="brush: php">
    public function run()
    {
        $this->setView('helloview');
        $this->setView('otherfolder/helloview');
    }
</pre>

<ul>
    <li><span class="bold">Line 3:</span> load the view in www/templates/hello/helloview.?</li>
    <li><span class="bold">Line 3:</span> load the view in www/templates/otherfolder/helloview.?</li>
</ul>

<p>You can also specified an ACL to a template:</p>

<pre class="brush: php">
    public function run()
    {
        $this->setView('helloview', 'admin');
    }
</pre>

<h6>Skeleton</h6>

<p>You can add a skeleton by using the following method, for more info about skeleton see
   <a href="">Skeleton</a></p>

<pre class="brush: php">
    public function run()
    {
        $this->register('post', $_POST);
    }
</pre>

<h6>Register variables</h6>

<p>To add a variable from your controller to your template, just use the register method, the
   variable can then been used in all included template.</p>

<pre class="brush: php">
    public function run()
    {
        $this->register('post', $_POST);
    }
</pre>

<h6>Call a method from an other controller</h6>

<p>To call a mehtod from an other controller, use the controller method:</p>

<pre class="brush: php">
    public function run()
    {
        $this->controller('test')->methodOfTestController();
    }
</pre>

<p>The controller method return the controller class so you can directly call method from it</p>