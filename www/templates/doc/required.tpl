<h5>Required</h5>

<p>Walrus can work with different PHP versions.</p>
<p>If you want all the Walrus features, you definitely want to use PHP 5.4.4 or higher. Why this requirement ?
   Basically because Walrus long polling methods are using PHP SessionHandlerInterface.</p>
<p>You still can use PHP 5.3.3 but you will not be able to user Walrus long polling methods.</p>


<h6>ORM</h6>

<p>Walrus is using <a href="http://redbeanphp.com/">RedBean ORM</a>. RedBean works with :
</p>
<ul>
    <li>MySQL 5 and higher</li>
    <li>SQLite 3.6.19 and higher</li>
    <li>PostgreSQL 8 and higher</li>
    <li>CUBRID (since 3.2)</li>
</ul><br/>
<p>Walrus is using RedBean because it's simple to use, lightweight and pretty fast for an ORM. That's why we are using it.
   Here is the documentation of <a href="http://redbeanphp.com/welcome">RedBean</a>.</p>