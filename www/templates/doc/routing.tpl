<h5>Routing</h5>

<p>
   Walrus use a simple routing system inspired by ROR and Symfony.
   All your route must be defined in the routes.yml file, in the
   <span class="bold">config/</span> directory.
</p>

<h6>Simple route</h6>

<p>A route need a least four information, a name, a path, a controller and an action</p>

<pre class="brush: yaml">
    _home:
        path:   'home'
        controller: 'HomeController'
        action: 'run'
</pre>

<ul>
    <li><span class="bold">Line 1:</span> the route name, used to differentiate your routes,
        the route name is unique</li>
    <li><span class="bold">Line 2:</span> the route path, need to be a valid url, you don't need
        to add a slash in the begining</li>
    <li><span class="bold">Line 1:</span> the controller, a full controller name</li>
    <li><span class="bold">Line 1:</span> the action, a public method from the controller</li>
</ul>

<h6>Parameters</h6>

<p>You can add all the parameter you want, but each parameter must have a unique name and
    optional parameter must be at the end of the path. <br/>
    Parameter are written like this <span class="bold">:param</span> and optional parameter
    like this <span class="bold">(:param)</span></p>

<p>Let's add four parameters to our route, with the two last one otpional, of course in this
    case, the run method should take at least 2 parameter and 2 optional paramater too.</p>

<pre class="brush: yaml">
    _home:
        path:   'home/:param1/:param2/(:param3)/(:param4)'
        controller: 'HomeController'
        action: 'run'
</pre>

<h6>Method</h6>
<p>The HTTP method can be specified for each route and sanitize your aprameter according the
   method of your choice. Valid method for routing are
   <span class="bold">GET, POST, PUT</span> and <span class="bold">DELETE</span> <br/>
   By default the method is set to GET.
</p>

<pre class="brush: yaml">
    _home:
        path:   'home'
        controller: 'HomeController'
        action: 'run'
        method: 'POST'
</pre>

<h6>Simple ACL</h6>
<p>To limit the access of a specific route in a simple way, you can use Walrus ACL system.
   In this example we limit the access to user with the <span class="bold">admin</span> role</p>

<pre class="brush: yaml">
    _home:
        path:   'home'
        controller: 'HomeController'
        action: 'run'
        acl: 'admin'
</pre>

<h6>Filters</h6>

<p>To secure the data input of your route you can use filters, there is two type of filters,
   the first one let you make type verification on the parameter with a regex and the second
   let you define a default value.</p>

<p>Require filter example: <br/>
    In this example we aply the <span class="bold">/[\d-]+/</span> regex pattern to
    <span class="bold">:param1</span></p>

<pre class="brush: yaml">
    _home:
        path:   'home/:param1'
        controller: 'HomeController'
        action: 'run'
        filters:
            require:
                param1: '[\d-]+'
</pre>

<p>Default filter example: <br/>
    In this example we aply the <span class="bold">hello</span> value to
    <span class="bold">:param1</span> if it's not specified in the URL</p>

<pre class="brush: yaml">
    _home:
        path:   'home/:param1'
        controller: 'HomeController'
        action: 'run'
        filters:
            default:
                param1: 'hello'
</pre>

<h6>Complexe routing</h6>

<p>You can of course use everything together to create more intelligent routing</p>

{literal}
<pre class="brush: yaml">
    _home:
        path:   'home/:param1/:param2/:param3/(:param4)'
        controller: 'HomeController'
        action: 'run'
        method: 'GET'
        acl: 'admin'
        filters:
            require:
                param1: '\d+'
                param2: '[A-Z]'
                param3: '\w{4}'
                param4: '\w+'
            default:
                param4: 'hello'
</pre>
{/literal}