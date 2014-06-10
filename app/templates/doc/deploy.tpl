<h5>Deploy</h5>

<p>
    Walrus as a integrated deployment tool controlled by the <a href="/doc/cli">CLI</a>
</p>

<pre class="brush: php">
    php tusk deploy
</pre>

<p>Launching a deploy will create a production version of your project, and compile all
    your config file to a compiled.php file in the <span class="bold">config/</span>
    directory  you can modify the deploy.php file in the config directory to personalize
    your deployment</p>

<p>This file only contain a blacklist of file to ignore for now:</p>

{literal}
<pre class="brush: php">
$_ENV['W']['deploy']['blacklist'] = array(
    DIRECTORY_SEPARATOR . 'www' . DIRECTORY_SEPARATOR . 'testing',
    '.git',
    '.idea',
    '.DS_Store',
    'Thumbs.db',
    'cache',
    'config',
    'logs',
    'Test',
    'tusk',
);
</pre>
{/literal}