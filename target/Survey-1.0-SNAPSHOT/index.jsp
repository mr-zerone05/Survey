<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Form</title>
    <link rel="stylesheet" href="css/main.css">
    <script>
        function validateForm() {
            let firstName = document.forms["surveyForm"]["firstName"].value;
            let lastName = document.forms["surveyForm"]["lastName"].value;
            let email = document.forms["surveyForm"]["email"].value;

            if (firstName.trim() === "" || lastName.trim() === "" || email.trim() === "") {
                alert("First Name, Last Name và Email không được bỏ trống!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="intro">
    <img src="images/logo.png" alt="Logo">
    <h1>Survey</h1>
    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
</div>

<div class="content">
    <form name="surveyForm" action="SubmitServlet" method="post" onsubmit="return validateForm()">
        <div class="Information-text">
            <h1>Your Information</h1>
            <div class="information">
                <h2>First Name</h2>
                <input type="text" name="firstName">
            </div>
            <div class="information">
                <h2>Last Name</h2>
                <input type="text" name="lastName">
            </div>
            <div class="information">
                <h2>Email</h2>
                <input type="text" name="email">
            </div>
            <div class="information">
                <h2>Date of Birth</h2>
                <input type="date" name="dob">
            </div>
        </div>

        <div class="Information-Radio">
            <h1>How did you hear about us?</h1>
            <div class="input-Radio">
                <label><input type="radio" name="source" value="Search engine"> Search engine</label>
                <label><input type="radio" name="source" value="Word of mouth"> Word of mouth</label>
                <label><input type="radio" name="source" value="Social Media"> Social Media</label>
                <label><input type="radio" name="source" value="Other"> Other</label>
            </div>
        </div>

        <div class="Information-checkbox">
            <h1>Would you like to receive announcements?</h1>
            <div class="input-checkbox">
                <label><input type="checkbox" name="announcement1" value="Yes"> YES, I'd like that.</label>
                <label><input type="checkbox" name="announcement2" value="Yes"> YES, please send me email announcements.</label>
            </div>
        </div>

        <div class="Contact">
            <h2>Please contact me by:</h2>
            <select name="contactMethod" id="Contact">
                <option value="Email">Email or Postal Mail</option>
                <option value="Phone">Email Only</option>
                <option value="Mail">Postal Mail Only</option>
            </select>
        </div>

        <input type="submit" value="Submit Survey">
    </form>
</div>
</body>
</html>

