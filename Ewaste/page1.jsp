<html>
<head>
<script>
function validate()
{
var user=document.form.user.value;
var user=document.form.pass.value;
if(user=="" || pass=="")
{
	document.getElementById('mydiv').innerHTML="Please enter login details";
	return false;
}
}
</script>
<title>Login Form Design</title>
    <link rel="stylesheet" type="text/css" href="page1.css">
	
</head>
<ul>
  <li><a class="active" href="page1.jsp">Home</a></li>
  <li><a href="https://www.youtube.com/watch?v=2REsMF3PfvA">Why E-waste</a></li>
  <li><a href="process.html">Process</a></li>
  <li><a href="Contact.html">Contact us</a></li>
  <li><a href="AboutUs.html">About</a></li>
</ul>
<body>
    <div class="loginbox">
    <img src="logo.png" class="avatar">
        <h1>Customers Login</h1>
        <form action="loginAction.jsp" name="form" method="post" onSubmit='return validate()'>
            <p>Username</p>
            <input type="text" name="user" id="user" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="pass" id="pass" placeholder="Enter Password">
		<center><font color="red"><div id='mydiv'></div></font></center>
            <input type="submit" name="login" value="Login">
            <c><a href="page1.jsp">Login as Customer?</a></c><br>
            <a href="signUp.html">Don't have an account?</a>
            <a href="adminLog.jsp">Log in as an Admin?</a>
        </form>
        
    </div>

</body>
</html>
