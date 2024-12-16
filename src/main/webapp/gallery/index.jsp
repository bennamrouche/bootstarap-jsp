<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Gallery from Picsum Photos</title>
    <!-- Bootstrap CSS via CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom theme color and image hover effects -->
    <style>
        body {
            background-color: #f4f4f9;
            color: #333;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .image-card {
            margin-bottom: 20px;
            border: none;
            transition: transform 0.3s ease-in-out;
        }
        .image-card:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .card-img-top {
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Image Gallery from Picsum Photos</h1>
    <p>Explore beautiful random images from Picsum Photos</p>
</div>

<div class="container mt-5">
    <div class="row" id="image-gallery">
        <!-- Images will be inserted here dynamically -->
    </div>
</div>

<!-- Bootstrap JS and jQuery via CDN -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

<script>
    // Fetch random images from Picsum Photos (no API key required)
    $(document).ready(function() {
        const totalImages = 150; // Number of images to display

        // Generate random images
        for (let i = 0; i < totalImages; i++) {
            const imageId = Math.floor(Math.random() * 1000); // Random image ID
            const imageCard = `
                <div class="col-md-4">
                    <div class="card image-card">
                        <img src="https://picsum.photos/id/${imageId}/500/300" alt="Random Image ${imageId}" class="card-img-top">
                    </div>
                </div>
            `;
            $('#image-gallery').append(imageCard);
        }
    });
</script>

</body>
<p>
    alphaben
</p>
</html>

