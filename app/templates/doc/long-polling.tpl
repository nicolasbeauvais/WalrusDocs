<h1>Long Polling</h1>

<p><strong>Walrus</strong> let you setup a long polling script in a very simple way, long polling work best on API route, because API
    route a way more lightweight and handle for you HTPP code response and JSON output</p>

<p>The first step is to subscribe to the <strong>Walrus</strong> long polling, for this create a controller with an empty action and add
    the following line:</p>

<pre class="brush: php">
    public function run()
    {
        return self::setPolling(array('table1', 'table2'), array(&$this, 'callbackFunction'));
    }
</pre>

<p>This will setup the long polling, the first argument is an array of the table you want to subscribed, and the second
    one an array with two row, the first is the current class <span class="bold">&$this</span> and the second an action
    name <br/>
    Now wen need to create this callback function, the callback function have two tings to do, the first one is to get
    the last inserted rows for each of the tables you want (we assume that you have a table1 and table2 model with
    working get actions), you can use <span class="bold">self::$last_ids['yourtable']</span> to know the last id getted
    by the user:</p>

<pre class="brush: php">
    public function run()
    {
        return self::setPolling(array('table1', 'table2'), array(&$this, 'callbackFunction'));
    }

    public function callbackFunction()
    {
        $table1 = $this->model('table1')->getLasts(self::$last_ids['table1']);
        $table2 = $this->model('table2')->getLasts(self::$last_ids['table2']);
    }
</pre>

<p>The second and last thing to do is to verify if we have received some data, and if so, return the data. <strong>Walrus</strong>
    long polling also need from you the last received id, this is really simple to do (this can be simplified but
    it's more explicit on this way):</p>

<pre class="brush: php">
    public function run()
    {
        return self::setPolling(array('table1', 'table2'), array(&$this, 'callbackFunction'));
    }

    public function callbackFunction()
    {
        $table1 = $this->model('table1')->getLasts(self::$last_ids['table1']);
        $table2 = $this->model('table2')->getLasts(self::$last_ids['table2']);

        if (!empty($table1)) {
            $response['table1'] = $table1;
            self::$last_ids['table1'] = end($table1)['id'];
        }

        if (!empty($table2)) {
            $response['table2'] = $table1;
            self::$last_ids['table2'] = end($table2)['id'];
        }

        if (isset($response)) {
            return $response;
        }
    }
</pre>

<p>That's all ! your long polling is fully setup on your backend. Now you need to request it with <strong>Walrus</strong>.js, take a
    look to <a href="{$url}front-long-polling"><strong>Walrus</strong> FrontEnd long polling</a></p>



