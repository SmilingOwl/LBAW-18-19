<!DOCTYPE html>
<html lang="en">

<head>
    @include('includes')
    <script>
        let info = @json($catinfo);
    </script>
    @yield('include')

</head>

<body>
    @include('layouts.nav_bar')

    <div class="conteudo">
        @yield('content')
    </div>
    @include('layouts.footer')
</body>

</html>