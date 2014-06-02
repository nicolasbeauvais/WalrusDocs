<h1>Monitoring</h1>

<p>
    The WalrusMonitoring class handle the developer toolbar, the Walrus process timing and also
    the exception and error handling.
</p>

<h6>Developer toolbar</h6>

<img src="/assets/images/toolbar.png" alt="Walrus developer toolbar" />

<p>The Walrus developer toolbar is shown only in development mode and display some information:</p>

<ul>
    <li>Exception number</li>
    <li>HTTP status</li>
    <li>Walrus execution time</li>
    <li>Compiled config file number</li>
</ul>

<p>A click on the Walrus logo will redirect you to the correct documentation version</p>

<h6>Exception handling</h6>

<img src="/assets/images/exception.png" alt="Walrus developer toolbar" />

<p>The exception handling system provided by Walrus is a tool made to help you in your debugging
    process. This panel can show multiple Exceptions and can also help you to debug PHP errors.</p>

<p>The exception panel is divide in two part:</p>

<ul>
    <li>The left side show you the call stack of the exception</li>
    <li>the right part show you the whole function where the exception
        is thrown and the function comment block</li>
</ul>

<p>Like the developer toolbar, the exception panel is shown only when you use walrus in development
    mode. When you use Walrus in production mode all Exception and error are not showed but saved in
    a log file in the <span class="strong">logs/</span> directory</p>

<h6>Walrus Exception</h6>

<p>You can catch your exceptions using the Walrus Exception catcher and debug tool by using the
    WalrusException class:</p>

<pre class="brush: php">
    use Walrus\core\WalrusException;

    class TestClass {

        public function testException ()
        {
            throw new WalrusException('Exception message');
        }
    }
</pre>