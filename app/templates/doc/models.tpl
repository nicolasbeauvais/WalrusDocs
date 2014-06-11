<h1>Models</h1>

<h6>Get started</h6>

<p>
    You can create a new model with the <a href="{$url}cli"><strong>Walrus</strong> CLI</a>, or create it yourself
    using this basic syntax:
</p>

<pre class="brush: php">
    namespace engine\models;

    use R;

    class Test extends WalrusModel
    {

    }
</pre>

<p>Don't forget than Walrus use the RedBean ORM by default.</p>

<h6>Call a method from an other model</h6>

<p>To call a method from an other model, use the model method:</p>

<pre class="brush: php">
    public function run()
    {
        $this->model('test')->methodOfTestModel();
    }
</pre>

<p>The model method return the model class so you can directly call method from it</p>
