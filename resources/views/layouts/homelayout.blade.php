<!DOCTYPE html>
<html lang="en">

<head>
    @include('includes')
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/home.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <script>
        let info = @json($catinfo);
    </script>
    <script src={{asset('js/main.js')}}></script>
    <script src={{asset('js/search_bar.js')}}></script>

</head>

<body>
    
    <div class="container">
        @yield('content')
    </div>
    @extends('layouts.footer')
</body>

</html>