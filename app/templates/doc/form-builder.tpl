<h1>Form builder</h1>

<p>
    <strong>Walrus</strong> form builder is a built-in tool to simplify your development. The form builder help you to:
</p>

<ul>
    <li>Create the form structure</li>
    <li>Verify each input and display error messages</li>
    <li>Reroute to another action if the form is validated</li>
</ul>

<p class="note">All configuration YAML files in walrus are parsed to PHP array, you can create all the files you want in the correct
    configuration directory</p>

<h6>Defining a form</h6>
{literal}
<pre class="brush: yaml">
form_signup:
  form:
    method: POST
    action: /my-form
    submit: Send
    structure: list

  fields:
    email:
      type: text
      required: true
      label: Your email
      check:
        validate: /^\w{3,10}$/
    password:
      type: password
      id: helloworld
      check:
        required: true
    sexe:
      type: radio
      options:
        male:
          label: Male
        female:
          label: Female
      check:
        required: true
    newsletter:
      type: checkbox
      options:
        1:
          label: 'Yes'
        0:
          label: 'No'
    categories:
      type: select
      function: HelloController::getSelect
      check:
        required: true
    transport:
      type: select
      options:
        - train
        - cars
        - plane
    message:
      type: textarea
      check:
        min: 50
</pre>
{/literal}

<p>
    This is a simple form example to show the biggest part of the form builder features.
</p>

<ul>
    <li>First you define a name to recognise your form, here "form_signup".</li>
    <li>Second, you can define some basic form information such as the:
        <ul>
            <li>method</li>
            <li>action</li>
            <li>submit</li>
            <li>structure</li>
        </ul>
    </li>
    <li>
        Then you can declare all your fields, by default the key of the field is used as the input name,
        all elements of the input's array are interpreted as html attributes, instead of label used to
        add a label to the input and check used to validate the input. Possible check attributes are:
        <ul>
            <li><span class="bold">required: true</span> validate if the input value is set</li>
            <li><span class="bold">blank: true</span> validate if the input value is blank</li>
            <li><span class="bold">empty: true</span> validate if the input value is set and empty</li>
            <li><span class="bold">equal_to: value</span> validate if the input value is equal to the string value
                (can be an int or float too)</li>
            <li><span class="bold">equal_to: %field</span> validate if the input value is equal to an other
                field named field</li>
            <li><span class="bold">even: true</span> validate if the input value is even</li>
            <li><span class="bold">odd: true</span> validate if the input value is odd</li>
            <li><span class="bold">greater_than: number</span> validate if the input value is greater than a number</li>
            <li><span class="bold">greater_than_or_equal_to: number</span> validate if the input value is greater than
                or equal to a number</li>
            <li><span class="bold">number: true</span> validate if the input value is a number </li>
            <li><span class="bold">integer: true</span> validate if the input value is an integer</li>
            <li><span class="bold">max: number</span> validate if the input value length is equal or smaller to a
                number</li>
            <li><span class="bold">min: number</span> validate if the input value length is equal or greater to a
                number</li>
            <li><span class="bold">length: number</span> validate if the input value as a length equal to a number</li>
            <li><span class="bold">max_selected: number</span> validate if the checked checkbox number is less or
                equal to a number</li>
            <li><span class="bold">min_selected: number</span> validate if the checked checkbox number is more or
                equal to a number</li>
            <li><span class="bold">selected: number</span> validate if the checked checkbox number are is equal to
                a number</li>
        </ul>
    </li>
</ul>

<p>The checkbox, select and radio input fields can have an "options" or "function" attribute describing the
    input's datas. The options param is a simple key value array, the function is a call to one of your method
    who must return a PHP array if you want dynamic inputs data</p>

<h6>Using a form</h6>

<p>To use a form after describing it into a YAML file you need to instantiate the form:</p>

<pre class="brush: php">
    $form = new WalrusForm('form_signup');
</pre>

<p>Then you must check the user's data with the check method, this method return null if no data add been submitted,
    true if the form data are totally valid and an array of error if the form data are invalid, you can automatically
    reroute to a new function if the form data are valid by giving parameters to the check function</p>

<pre class="brush: php">
    $form = new WalrusForm('form_signup');

    // simply check the form
    $form->check();

    // if the form data are valid reroute to the controller test and method success with some params
    $form->check('test', 'success', array('hello' => 'world'));
</pre>

<p>To display the form, use the render method wich return a HTML output</p>

<pre class="brush: php">
    $form = new WalrusForm('form_signup');
    $form->check();

    echo $form->render();
</pre>

<h6>Errors handling</h6>

<p>All errors messages are handled automatically, you can changes the messages in the file
    <span class="bold">config/i18ns/default.yml</span> which is the future internationalisation module
    of Walrus Framework</p>