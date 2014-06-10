<h5>Getting Started</h5>

<p>Before you get started, check that two things :</p>

<ul>
    <li><span class="bold">You have the <a href="{$url}required">proper requirements</a> on your machine</span></li>
    <li><span class="bold">You have the <a href="{$url}installation">properly installed</a> <strong>Walrus</strong> on your machine</span></li>
</ul>

<p>After you have done these two simple things, here is what <strong>Walrus</strong> architecture looks like and what directories are meant to :</p>

<ul>
    <li>
        <span class="bold"><strong>Walrus</strong></span>/ - All the files of <h1 style="display: inline-block">Walrus Framework</h1>. This is where magic happens and where you should look at when you want to contribute.</li>
    <li>
        <span class="bold">config</span>/

        <ul>
            <li>
                <span class="italic">config.yml</span> - This is where all your <strong>framework</strong> configs go (database, ...).</li>
            <li>
                <span class="italic">env.php</span> - All environment variables.</li>
            <li>
                <span class="italic">routes.yml</span> - All your routes.</li>
            <li>
                <span class="italic">skeleton.yml</span> - This is where you indicate the different parts of your views. Cf. Skeleton</li>
        </ul>
    </li>
    <li>
        <span class="bold">engine</span>/ - This is the back-end of your application.

        <ul>
            <li>
                <span class="italic">controllers</span>/ -  Your own controllers go here.</li>
            <li>
                <span class="italic">models</span>/ - Your own models go here.</li>
        </ul>
    </li>
    <li>
        <span class="bold">vendor</span>/ -  Your vendors go here, few are already included in order to get Walrus working.</li>
    <li>
        <span class="bold">www</span>/ - This is the front-end of your application, basically the files your browsers will be able to get.

        <ul>
            <li>
                <span class="italic">assets</span>/ -  All your images, javascript and styles files.</li>
            <li>
                <span class="italic">templates</span>/ - Your templates here..</li>
            <li>
                <span class="italic">index.php</span> - Entry point of your application.</li>
        </ul>
    </li>
    <li>
        <span class="bold">tusk</span> - <strong>Walrus</strong> Command Line Interface (CLI).</li>
</ul>

<p>Speaking of CLI (a.k.a Tusk), it is probably the time for you to create some models or controllers in order to begin a project. Rendez-vous
    <a href="{$url}cli" class="bold">here</a> in order to see how to use Tusk.</p>
