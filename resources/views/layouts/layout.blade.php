<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    @include('includes')
    @yield('include')

</head>

<body>
    @if (Auth::check())
        @if (Auth::user()['username'])
            
        @endif
        <input type="hidden" value="logged" id="type">
    @else
        <input type="hidden" value="unlogged" id="type">
    @endif

    @include('layouts.nav_bar')

    <div class="conteudo">
        @yield('content')
    </div>
    @include('layouts.footer')
</body>

</html>