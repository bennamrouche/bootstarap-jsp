<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple JSP Page with Bootstrap</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <!-- Weather Card -->
            <div class="col-md-6 mb-4">
                <div class="card">
                    <img src="https://via.placeholder.com/150" class="card-img-top" alt="Weather Image">
                    <div class="card-body">
                        <h5 class="card-title">Weather</h5>
                        <p class="card-text">Get the latest weather updates.</p>
                        <a href="/weather" class="btn btn-primary">Go to Weather</a>
                    </div>
                </div>
            </div>

            <!-- Gallery Card -->
            <div class="col-md-6 mb-4">
                <div class="card">
                    <img src="https://via.placeholder.com/150" class="card-img-top" alt="Gallery Image">
                    <div class="card-body">
                        <h5 class="card-title">Gallery</h5>
                        <p class="card-text">Explore the gallery of images.</p>
                        <a href="/gallery" class="btn btn-primary">Go to Gallery</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
