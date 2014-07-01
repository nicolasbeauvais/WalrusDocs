<h1>Mailer</h1>

<p>
    Walrus implements the well-known <span class="bold">PHPMailer</span> library. <br/>The repository of it
    is available right <a href="https://github.com/PHPMailer/PHPMailer">here</a> and the full documentation
    is right <a href="http://phpmailer.github.io/PHPMailer/">here</a>.
</p>

<h6>Using the Mailer</h6>

<p>There isn't a "right way" to use the mailer but don't forget that there is a method called <span class="bold">etSoft()</span>
which can return you the content of a template, that's how we use it in WalrusTeam.</p>


<h6>Reminder : getSoft()</h6>

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