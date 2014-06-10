<h1>Controllers</h1>

<p>
   You can create a new controller with the <a href="/doc/cli"><strong>Walrus</strong> CLI</a>, or create it yourself
    using this basic syntax:
</p>

{literal}
<pre class="brush: php">

    namespace engine\controllers;

    use Walrus\core\WalrusController;

    class TestController extends WalrusController
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
    <li><span class="bold">Line 4:</span> load the view in www/templates/otherfolder/helloview.?</li>
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
        $this->skeleton('some_skeleton');
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

<p>To call a method from an other controller, use the controller method:</p>

<pre class="brush: php">
    public function run()
    {
        $this->controller('test')->methodOfTestController();
    }
</pre>

<p>The controller method return the controller class so you can directly call method from it</p>

<h6>Call a method from a model</h6>

<p>To call a mehtod from a model, use the model method:</p>

<pre class="brush: php">
    public function run()
    {
        $this->model('test')->methodOfTestModel();
    }
</pre>

<p>The model method return the model class so you can directly call method from it</p>

<h6>Redirect</h6>

<p>If you want to redirect your controller to an other web page, simply use the go method</p>

<pre class="brush: php; auto-links: false;">
    public function run()
    {
        $this->go('http://url-to-redirect.com');
    }
</pre>

<h6>Reroute</h6>

<p><strong>Walrus</strong> provide a reroute method, everything on your controller after a reroute will not be
   executed. Reroute use a light routing version of <strong>Walrus</strong> to be processed really quickly</p>

<pre class="brush: php">
    public function run()
    {
        $this->reroute('controller', 'action', array('param' => 'hello'));
    }
</pre>

<h6>Get (Hard)</h6>

<p>The get hard method give you the content of a specified url (curl style)</p>

<pre class="brush: php; auto-links: false;">
    public function run()
    {
        $this->getHard('http://website-to-get-content.com');
    }
</pre>

<h6>Get (Soft)</h6>

<p>The get soft method is a unique method from <strong>Walrus</strong> <strong>framework</strong>, this method allow you
    to get the rendered content of a controller's action, it use the same light rerouting as the reroute method and
    catch all the front end rendering as a string, every interaction with the controller like setting view or
    registering variable are instantiated for a full compatibility between controllers.</p>

<pre class="brush: php">
    public function run()
    {
        $content = $this->getSoft('controller', 'action', array('hello' => $hello));
    }
</pre>

