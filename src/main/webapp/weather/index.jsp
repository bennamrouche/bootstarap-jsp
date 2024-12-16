<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Weather App (No API Key)</title>
  <!-- Bootstrap CSS via CDN -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom theme color -->
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
    .weather-card {
      margin-top: 30px;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      text-align: center;
    }
    .weather-icon {
      width: 100px;
      height: 100px;
    }
  </style>
</head>
<body>

<div class="header">
  <h1>Weather App (No API Key)</h1>
  <p>Get the current weather for any city (Mock API)</p>
</div>

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="form-group">
        <input type="text" id="city-name" class="form-control" placeholder="Enter city name">
      </div>
      <button id="get-weather" class="btn btn-primary btn-block">Get Weather</button>
    </div>
  </div>

  <!-- Weather details will appear here -->
  <div class="row justify-content-center" id="weather-details">
    <!-- Weather information will be displayed here dynamically -->
  </div>
</div>

<!-- Bootstrap JS and jQuery via CDN -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

<script>
  // Open-Meteo API for mock weather data (latitude and longitude for demo purposes)
  $('#get-weather').click(function() {
    const city = $('#city-name').val();

    // Mock API: for simplicity, using fixed coordinates (latitude and longitude)
    // In a real app, you would use geocoding to convert city name to lat/lon
    const latitude = 37.7749;  // Example: San Francisco latitude
    const longitude = -122.4194;  // Example: San Francisco longitude

    if (city) {
      const apiUrl = `https://api.open-meteo.com/v1/forecast?latitude=${latitude}&longitude=${longitude}&current_weather=true`;

      $.ajax({
        url: apiUrl,
        method: 'GET',
        success: function(data) {
          const weatherDetails = `
                        <div class="col-md-6">
                            <div class="card weather-card">
                                <h2 class="card-title">${city}</h2>
                                <h3>Current Weather</h3>
                                <p>Temperature: ${data.current_weather.temperature}°C</p>
                                <p>Wind Speed: ${data.current_weather.windspeed} km/h</p>
                                <p>Humidity: ${data.current_weather.humidity}%</p>
                            </div>
                        </div>
                    `;
          $('#weather-details').html(weatherDetails);
        },
        error: function(error) {
          alert('Error fetching data: ' + error.responseJSON.message);
        }
      });
    } else {
      alert("Please enter a city name.");
    }
  });
</script>

</body>
</html>
