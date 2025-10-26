<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Adulteration Inquiry</title>
    <link rel="stylesheet" href="Us.css">
</head>

<body>
    <header>
        <h1>Food Adulteration Inquiry</h1>
        <p>Please use the form below to submit your inquiries or reports regarding food adulteration.</p>
    </header>

    <main>
        <form action="submit.php" method="post">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required>

            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" required></textarea>

            <button type="submit">Submit</button>
        </form>

        <!-- View Submitted Reports Button -->
        <div style="text-align: center; margin-top: 20px;">
            <a href="submitted_reports.php"
                style="display: inline-block; color: white; text-decoration: none; font-weight: bold; padding: 10px 20px; background-color: #007BFF; border-radius: 4px; transition: background-color 0.3s ease;">
                View Submitted Reports
            </a>
        </div>

        <div style="text-align: center; margin-top: 20px;">
            <a href="home.html"
                style="color: #333; text-decoration: none; font-weight: bold; padding: 10px 20px; background-color: #f0f0f0; border-radius: 4px; transition: background-color 0.3s ease;">
                Return To HomePage
            </a>
        </div>
    </main>
</body>

</html>
