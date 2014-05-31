<div id="changelog">
    <h5>Change Log</h5>

    {* Back End *}
    <p class="title">Back-end</p>

    {* WalrusMonitoring *}
    <h6><span class="new">New</span> WalrusMonitoring</h6>

    <p>Walrus class, used to monitor <strong>Walrus framework</strong> process, handle all developer tools like the
    Walrus development toolbar and the custom error and exception handler</p>

    {* WalrusException *}
    <h6><span class="new">New</span> WalrusException</h6>

    <p>A simple class that extend the PHP exception class, used to be handled by WalrusMonitoring</p>

    {* WalrusModel *}
    <h6><span class="new">New</span> WalrusModel</h6>

    <p>Walrus class, used as a tool for model, just like the WalrusController class</p>

    {* WalrusCompile *}
    <h6><span class="new">New</span> WalrusCompile</h6>

    <p>Walrus class, used to parse all configuration from YAML to PHP</p>

    {* WalrusFrontHelpers *}
    <h6><span class="new">New</span> WalrusHelpers</h6>

    <p>Helpers are the package equivalent in <strong>Walrus</strong>, you can register them into the WalrusHelpers Class
    to use them in your backend or frontend script</p>

    {* Helpers *}
    <h6><span class="new">New</span> core directory: Helpers</h6>

    <p>Walrus Helpers are in the Helpers directory, for now only two helpers:</p>

    <ul>
        <li><span class="ul-title">Url</span> helper with a nolink method.</li>
        <li><span class="ul-title">HTML tag</span> helper to create HTML tag with PHP objects.</li>
    </ul>

    {* Unit test *}
    <h6><span class="new">New</span> unit test</h6>

    <p>Some unit test have been written on PHPUnit, essentialy to cover the WalrusRouter
        and WalrusFiler class</p>

    {* Front controller *}
    <h6><span class="rename">Rename</span> WalrusFrontController to WalrusController</h6>

    <p>WalrusFrontController give methods to help you handling front end development and as also method to help
        controller development. So we decided to rename it WalrusController</p>

    {* WalrusRouter *}
    <h6><span class="update">Update</span> WalrusRouter</h6>

    <p>The router can now handle default page for 403 and 404 http error code, know the router call the controller
        class constructor when it execute it. As a part of the <strong>Walrus</strong> v1.0.0 update the router now
        use PHP compiled route instead of user's YAML.</p>

    <ul>
        <li><span class="ul-title">Refactor</span> almost all methods</li>
        <li><span class="ul-title">Debug</span> almost all methods</li>
    </ul>

    {* WalrusCLI *}
    <h6><span class="update">Update</span> WalrusCLI</h6>

    <p>You can now create an API controller using tusk, the <strong>Walrus</strong> CLI tool.
        A new "deploy" command as been created to create a testing project and compile all your
        configuration files to a single one in plain PHP</p>

    <ul>
        <li><span class="ul-title">Debug</span> bad namespace when creating a model</li>
    </ul>

    {* WalrusFiler *}
    <h6><span class="update">Update</span> WalrusFiler</h6>

    <p>The getContent method can now return only a part of the file, the OS directory separator is
        now used everywhere instead of "/", Also two new methods had been added:</p>

    <ul>
        <li><span class="ul-title">emptyFolder</span> empty a folder</li>
        <li><span class="ul-title">copy</span> copy a folder to a new path</li>
    </ul>

    <ul>
        <li><span class="ul-title">Refactor</span> simplify some methods</li>
        <li><span class="ul-title">Debug</span> clear PHP file cache when we fetch files informations</li>
    </ul>

    {* WalrusAutoload *}
    <h6><span class="update">Update</span> WalrusAutoload</h6>

    <ul>
        <li><span class="ul-title">Refactor</span> the OS directory separator is
            now used everywhere instead of "/"</li>
    </ul>

    {* Templates *}
    <h6><span class="update">Update</span> templates</h6>

    <p>Walrus templates as been moved from the www/ directory to the project's root</p>

    {* Config *}
    <h6><span class="update">Update</span> config</h6>

    <p>Config as a new field "base_url" useful when you use walrus on a sub url. The
        config form also have a new design and some new test features. All the
        configuration files are now parsed to PHP for a better performance.</p>

    {* Cache *}
    <h6><span class="update">Update</span> cache</h6>

    <p>Smarty cache is configurated to be written on the cache/ directory at the Walrus root</p>

    {* Front End *}
    <p class="title">Front-end</p>

    {* Walrus.js *}
    <h6>Walrus.js</h6>
    <ul>
        <li><span class="ul-title">Refactor</span> from native javascript to jQuery</li>
        <li><span class="ul-title">Ajax Navigation</span> new methods</li>
        <li><span class="ul-title">Ajax Navigation</span> breadcrumb</li>
        <li><span class="ul-title">Nolink</span> new method</li>
    </ul>
</div>