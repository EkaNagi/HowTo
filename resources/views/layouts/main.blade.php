<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HowTo | {{ $title }}</title>
    <link href="/dist/main.css" rel="stylesheet">
    @vite('resources/css/app.css')
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: {
          extend: {
            colors: {
              clifford: '#da373d',
            }
          }
        }
      }
    </script>
  </head>
  <body>
    @include('partials.navbar')

    <div class="container mt-4">
        @yield('container')
    </div>
  </body>
</html>