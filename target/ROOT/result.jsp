<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Result</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="intro">
    <h1>Survey Result</h1>
</div>

<div class="content">
    <h2>Thank you for your submission!</h2>
    <p><b>First Name:</b> ${firstName}</p>
    <p><b>Last Name:</b> ${lastName}</p>
    <p><b>Email:</b> ${email}</p>
    <p><b>Date of Birth:</b> ${dob}</p>
    <p><b>Heard about us:</b> ${source}</p>
    <p><b>Announcements 1:</b> ${announcement1}</p>
    <p><b>Announcements 2:</b> ${announcement2}</p>
    <p><b>Contact Method:</b> ${contactMethod}</p>
</div>
</body>
</html>

