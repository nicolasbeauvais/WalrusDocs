<h5>Long Polling</h5>

<p><strong>Walrus</strong> let you setup a long polling script in a very simple way, check the
   <a href="api-and-long-polling">API & long polling</a> to setup the backend
   of your long polling first</p>

<p>To subscribe to the long polling in javascript use the following function
   with the url of your long polling in parameter:</p>

<pre class="brush: javascript">
    Walrus.polling('api/polling/run');
</pre>

<h6>Poling callback</h6>

<p>Now to make a specif action you need to register a callback for each table
   you subscribed to in your backend, if the callback return DOM elements it will
   automatically be append in all the coresponding DOM hook (explained after)</p>

<pre class="brush: javascript">
Walrus.pollingRegister('table1', function (data) {
    var text = '', item;
    for (item in data) {
        text += 'Hello ' + data[item] + '<br/>';
    }
    return text;
});
</pre>

<p>In the previous example, if we get some <span class="bold">table1</span> data,
   for each row we add the text <span class="bold">Hello 'name'</span> and then return
   it, this text (can also be DOM) will be automatically added to the specified hook</p>

<h6>Polling hook</h6>

<p>A polling hook is simply an HTML tag where you want some data to be automatically append.
   For example if we want to display all the new table1 row in an HTML element we just need
   to add this attribute to it :</p>

<pre class="brush: javascript">
    <div data-poll="table1"></div>
</pre>

<p>Here the div with the <span class="bold">data-poll</span> attribute will receive all the
   content sended by the table1 javascript callback</p>
