<?php
include 'config.php';

$query = "SELECT name, email, location, subject, message FROM inquiries ORDER BY submitted_at DESC";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submitted Reports</title>
    <link rel="stylesheet" href="report_us.css">
</head>
<body>
    <header>
        <h1>Submitted Reports</h1>
        <p>Here are the reports submitted regarding food adulteration.</p>
    </header>

    <main>
        <table border="1" width="100%" style="border-collapse: collapse; text-align: left;">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Location</th>
                <th>Subject</th>
                <th>Message</th>
            </tr>
            <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                <tr>
                    <td><?php echo htmlspecialchars($row['name']); ?></td>
                    <td><?php echo htmlspecialchars($row['email']); ?></td>
                    <td><?php echo htmlspecialchars($row['location']); ?></td>
                    <td><?php echo htmlspecialchars($row['subject']); ?></td>
                    <td><?php echo htmlspecialchars($row['message']); ?></td>
                </tr>
            <?php } ?>
        </table>

        
        <div class="buttons" style="text-align: center; margin-top: 20px;">
            <form action="report.php">
                <button class="button submit-btn" type="submit">Submit Another Report</button>
            </form>
            <form action="home.html">
                <button class="button home-btn" type="submit">Return to Home</button>
            </form>
        </div>
       
    </main>
</body>
</html>
