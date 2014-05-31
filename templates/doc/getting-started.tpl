<h5>Getting Started</h5>

<h6>ORM</h6>

<p><strong>Walrus Framework</strong> is using <a href="http://redbeanphp.com/">RedBean ORM</a>. RedBean works with :
</p>
<ul>
    <li>MySQL 5 and higher</li>
    <li>SQLite 3.6.19 and higher</li>
    <li>PostgreSQL 8 and higher</li>
    <li>CUBRID (since 3.2)</li>
</ul><br/>

<p><strong>Walrus</strong> is using RedBean because it's simple to use, lightweight and pretty fast for an ORM.
    That's why we are using it. Here is the documentation of
    <span class="link" {$helpers.Url->nolink("http://redbeanphp.com/")}>RedBean</span>.</p>

<p>Before you get started, check that two things :</p>

<ul>
    <li><span class="bold">You have the <a href="/required">proper requirements</a> on your machine</span></li>
    <li><span class="bold">You have the <a href="/installation">properly installed</a> <strong>Walrus</strong>
            on your machine</span></li>
</ul>

<p>After you have done these two simple things, here is what <strong>Walrus</strong> architecture looks like and what
    directories are meant to :</p>

<ul>
    <li>
        <span class="bold"><strong>Walrus</strong></span>/ - All the files of <strong>Walrus Framework</strong>. This
        is where magic happens and where you should look at when you want to contribute.</li>
    <li>
        <span class="bold">cache</span>/ - the cache of your templating language if you use one.
    </li>
    <li>
        <span class="bold">config</span>/

        <ul>
            <li>
                <span class="italic">compiled</span>/ - All YAML config files are converted to PHP files in this
                directory.</li>
            <li>
                <span class="italic">routes</span>/ - Your <a href="/doc/routing">routes</a> YAML files.</li>
            <li>
                <span class="italic">skeleton</span>/ - Your <a href="/doc/skeleton">skeletons</a> YAML files</li>
            <li>
                <span class="italic">config.php</span> - This is where all your <strong>framework</strong> configs
                go (database, ...).</li>
            <li>
                <span class="italic">deploy.php</span> - <a href="/doc/deploy">Deploy</a> configuration</li>
            <li>
                <span class="italic">env.php</span> - All environment variables.</li>
        </ul>
    </li>
    <li>
        <span class="bold">engine</span>/ - This is the back-end of your application.
        <ul>
            <li>
                <span class="italic">controllers</span>/ -  Your own <a href="doc/api">API controllers</a>
                goes here.</li>
            <li>
                <span class="italic">controllers</span>/ -  Your own <a href="doc/controllers">controllers goes here.
                </a></li>
            <li>
                <span class="italic">models</span>/ - Your own <a href="/doc/models">models</a> goes here.</li>
        </ul>
    </li>
    <li>
        <span class="bold">logs</span>/ - Walrus logs files</li>
    <li>
        <span class="bold">templates</span>/ - Your templates here..</li>
    <li>
        <span class="bold">vendor</span>/ -  Your vendors goes here, few are already included in order to get Walrus
        working.</li>
    <li>
        <span class="bold">www</span>/ - This is the front-end of your application, basically the files your browsers
        will be able to get</li>

        <ul>
            <li>
                <span class="italic">assets</span>/ -  All your images, javascript and styles files.</li>
            <li>
                <span class="italic">index.php</span> - Entry point of your application.</li>
        </ul>
    </li>
    <li>
        <span class="bold">tusk</span> - <strong>Walrus</strong> Command Line Interface (CLI).</li>
</ul>

<p>Speaking of CLI (a.k.a Tusk), it is probably the time for you to create some models or controllers in order to
    begin a project. Rendez-vous
    <a href="/cli" class="bold">here</a> in order to see how to use Tusk.</p>
