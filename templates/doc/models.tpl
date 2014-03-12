<h5>Models</h5>

<h6>Get started</h6>

<p>Before we talk about models, keep in mind that you can generate your model via <a href="./cli">CLI (Tusk)</a>.</p>

<pre class="brush: php">
    php tusk createModel controller_name
</pre>

<p>Or you can simply create a file in <span class="italic">engine/models/</span> that looks like this :</p>

<pre class="brush: php">
    namespace engine\models;

    use R;

    class [Name]
    {

    }
</pre>

<p>The first line in order to have a clean code, we simply like to have everything at their right place, same for namespaces.</p>
<p>On the third line we are precising to <span class="italic">"use R"</span>. R corresponds to RedBean ORM and since in our model
   we want to do some SQL, we definitely want to use <span class="italic">"R"</span>.</p>
<p>Then you have your class declaration, all your method and attributes of your entities will go there, as always in MVC pattern</p>