<?php
$servername = "localhost";
$username = "root";
$password = "Daddy@2005";
$database = "food_safety";

// Create a connection
$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Testing Methods</title>

    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            background-image: url('background.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #333;
        }

        /* Header Styling */
        header {
            background: #333;
            color: #fff;
            padding: 1rem;
            text-align: center;
        }

        /* Main Content Styling */
        main {
            max-width: 800px;
            margin: 2rem auto;
            padding: 0 20px;
        }

        /* Section Styling (For Each Testing Method) */
        .method {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        /* Hover Effect for Method Sections */
        .method:hover {
            transform: scale(1.02);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        /* Heading Styles */
        .method h2 {
            color: #333;
            font-size: 24px;
            margin-top: 0;
        }

        /* Ordered List Styling */
        .method ol {
            padding-left: 30px;
        }

        .method li {
            font-size: 16px;
            color: #666;
            line-height: 1.5;
            margin-bottom: 8px;
            text-indent: 20px;
        }

        /* Highlighted Side Headings */
        .side-heading {
            font-weight: bold;
            color: #222;
            background-color: #f8f9fa;
            padding: 5px 10px;
            display: block;
            border-left: 4px solid #007BFF;
            margin-top: 10px;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            main {
                padding: 0 10px;
            }

            .method h2 {
                font-size: 20px;
            }

            .method li {
                font-size: 14px;
            }
        }

        /* Return to Home Button */
        .home-button {
            display: block;
            width: 200px;
            margin: 30px auto;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            background:rgb(169, 196, 224);
            color: black;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .home-button:hover {
            background:rgb(159, 188, 219);
        }

    </style>
</head>
<body>
    <header>
        <h1>Testing Methods for Food Adulteration</h1>
    </header>
    <main>
        <?php 
        $sql = "SELECT * FROM TestingMethods";
        $result = $conn->query($sql);

        while ($row = $result->fetch_assoc()): ?>
            <section class="method">
                <h2><?php echo htmlspecialchars($row['method_type']); ?></h2>
                <h3><?php echo htmlspecialchars($row['title']); ?></h3>

                <?php 
                $points = explode("\n", htmlspecialchars($row['description']));
                $step_counter = 1;
                echo "<ol>";
                foreach ($points as $point) {
                    $point = trim($point);
                    if (!empty($point)) { 
                        if (strpos($point, ':') !== false) {
                            $parts = explode(':', $point, 2);
                            echo "</ol>";
                            echo "<div class='side-heading'>{$parts[0]}:</div>";
                            echo "<ol>";
                            if (trim($parts[0]) == "Step-by-Step Procedure") {
                                $step_counter = 1;
                            }
                            if (!empty(trim($parts[1]))) {
                                if (trim($parts[0]) == "Step-by-Step Procedure") {
                                    echo "<li>{$step_counter}. {$parts[1]}</li>";
                                    $step_counter++;
                                } else {
                                    echo "<li>{$parts[1]}</li>";
                                }
                            }
                        } else {
                            if (trim($parts[0]) == "Step-by-Step Procedure") {
                                echo "<li>{$step_counter}. $point</li>";
                                $step_counter++;
                            } else {
                                echo "<li>$point</li>";
                            }
                        }
                    }
                }
                echo "</ol>";
                ?>
            </section>
        <?php endwhile; ?>

        <!-- Return to Home Button -->
        <a href="home.html" class="home-button">Return to Home</a>
    </main>
</body>
</html>

<?php $conn->close(); ?>
