<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <script>
        @if (Auth::check())
            let user_type = "{{session('type')->type}}";
            let username = "{{session('type')->username}}"
        
        @else
            let user_type = null
            
        @endif
    </script>
    @include('includes')
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