<!DOCTYPE HTML>
<html>

   <head>
      @include('templates.partials._head')
   </head>

   <body>
      <a name="ancre"></a>
      <!-- CACHE -->
      <div class="cache"></div>

      @include('templates.partials._header')

      @include('templates.partials._navbar')

      @include('templates.partials._filter')

      <!-- PORTFOLIO -->
      <div id="wrapper-container">
         {{-- Zone Dynamique --}}
         {{-- @yield('content') --}}

         @include('templates.partials._navPrevNext')

         @include('templates.partials._thank')

         @include('templates.partials._footer')

         @include('templates.partials._copyright')

      </div>
      @include('templates.partials._scripts')

      @include('templates.partials._preloader')
   </body>
</html>
