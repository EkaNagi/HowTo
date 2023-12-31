<nav class="flex items-center justify-between p-6 lg:px-8" aria-label="Global">
    <div class="flex lg:flex-1">
      <a href="/" class="-m-1.5 p-1.5">
        HowTo
      </a>
    </div>
    <div class="flex lg:hidden">
      <button type="button" class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700">
        <span class="sr-only">Open main menu</span>
        <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
        </svg>
      </button>
    </div>
    <div class="hidden lg:flex lg:gap-x-12">
      <a href="/" class="{{ ($active == "home") ? 'active' : '' }} text-sm font-semibold leading-6 text-gray-900">Home</a>
      <a href="/about" class="{{ ($active == "about") ? 'active' : '' }} text-sm font-semibold leading-6 text-gray-900">About</a>
      <a href="/posts" class="{{ ($active == "posts") ? 'active' : '' }} text-sm font-semibold leading-6 text-gray-900">Guide</a>
      <a href="/categories" class="{{ ($active == "categories") ? 'active' : '' }} text-sm font-semibold leading-6 text-gray-900">Categories</a>
      <a href="/digimon" class="{{ ($active == "digimon") ? 'active' : '' }} text-sm font-semibold leading-6 text-gray-900">Digimon Index</a>
    </div>
    <div class="hidden lg:flex lg:flex-1 lg:justify-end">
      @auth
        <li class="">
          <a class="" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Welcome back, {{ auth()->user()->name }}
          </a>
          <ul class="">
            <li><a class="" href="/dashboard"><i class=""></i> My Dashboard</a></li>
            <li><hr class=""></li>
            <li>
              <form action="/logout" method="post">
              @csrf
                <button type="submit" class="">
                  <i class=""></i> Logout
                </button>
              </form>
            </li>
          </ul>
        </li>
      @else
        <li class="">
          <a href="/login" class="{{ ($active == "login") ? 'active' : '' }} text-sm font-semibold leading-6 text-gray-900">Log in <span aria-hidden="true">&rarr;</span></a>
        </li>
      @endauth
      
    </div>
  </nav>
  