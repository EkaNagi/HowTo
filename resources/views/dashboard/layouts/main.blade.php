<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HowTo | Dashboard</title>

    @vite('resources/css/app.css')

    
    <link rel="stylesheet" type="text/css" href="https://unpkg.com/trix@2.0.0/dist/trix.css">
    <script type="text/javascript" src="https://unpkg.com/trix@2.0.0/dist/trix.umd.min.js"></script>

    <style>
      trix-toolbar [data-trix-button-group="file-tools"]{
        display:none;
      }
    </style>
    
    <link href="/css/dashboard.css" rel="stylesheet">
  </head>
  <body>

@include('dashboard.layouts.navbar')

<div class="container">
  <div class="row">
    <main class="items-center">
      @yield('container')
      
    </main>
  </div>
</div>

<script src="dashboard.js"></script>
</body>
</html>
