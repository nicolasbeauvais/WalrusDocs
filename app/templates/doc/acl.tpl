<h1>ACL</h1>

<h6>Configuring ACL</h6>
<p>
    Walrus as an integrated ACL heritage tree, you have to define it in the
    <span class="bold">config/acls/acl.yml</span>
</p>

<pre class="brush: php">
administrator:
  'administrate'
  partner: 'advertise'
  teacher:
      'teach'
      student: 'learn'
</pre>

<p>This exemple give:</p>
<ul>
    <li>The student can only learn</li>
    <li>The teacher get all student rights (learning) and can teach</li>
    <li>The partner can only advertise</li>
    <li>The administrator get all student, teacher and partner right, administrator can also administrate</li>
</ul>

<p>
    The ACL tree is used in the <a href="{$url}routing">routing</a> and <a href="{$url}skeleton">skeleton</a>
    by comparing the $_SESSION['acl'] variable. You need to fill this variable and make it available.
</p>

<h6>Using ACL</h6>

<p>
    To help you in your application with ACL, the WalrusACL class give you two useful methods which return boolean.
</p>

<pre class="brush: php">
    // Check if a user with the role "teacher" can access something who require a student role
    WalrusACL::hasRight('teacher', 'student');

    // Check if a user with the role "administrator" can do the task advertise
    WalrusACL::hasRight('administrator', 'advertise');
</pre>