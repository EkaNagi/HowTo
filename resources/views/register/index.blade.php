@extends('layouts.main')

@section('container')

<div class="flex min-h-full flex-col justify-center px-6 lg:px-8">
  <div class="sm:mx-auto sm:w-full sm:max-w-sm">
    <h2 class="mt-5 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">Registration Form</h2>
  </div>

  <div class="mt-1 sm:mx-auto sm:w-full sm:max-w-sm">
    <form class="space-y-6" action="/register" method="post">
      @csrf
      <div>
        <label for="name" class="block text-sm font-medium leading-6 text-gray-900">Nama</label>
        <div class="mt-2">
          <input id="name" name="name" type="name" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-teal-600 sm:text-sm sm:leading-6 @error('name') is-invalid @enderror" placeholder="Nama" autofocus required value="{{ old('name') }}">
        </div>
          @error('name')
            <div class="">
              {{ $message }}
            </div>
          @enderror
        </div>

        <div>
          <label for="username" class="block text-sm font-medium leading-6 text-gray-900">Username</label>
          <div class="mt-2">
            <input id="username" name="username" type="username" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-teal-600 sm:text-sm sm:leading-6 @error('username') is-invalid @enderror" placeholder="Username" required value="{{ old('username') }}">
          </div>
            @error('username')
              <div class="">
                {{ $message }}
              </div>
            @enderror
          </div>

      <div>
        <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email address</label>
        <div class="mt-2">
          <input id="email" name="email" type="email" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-teal-600 sm:text-sm sm:leading-6 @error('email') is-invalid @enderror" placeholder="name@example.com" required value="{{ old('email') }}">
        </div>
          @error('email')
            <div class="">
              {{ $message }}
            </div>
          @enderror
        </div>

      <div>
        <div class="flex items-center justify-between">
          <label for="password" class="block text-sm font-medium leading-6 text-gray-900">Password</label>
        </div>
        <div class="mt-2">
          <input id="password" name="password" type="password" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-teal-600 sm:text-sm sm:leading-6" placeholder="Password" required>
        </div>
          @error('password')
            <div class="invalid-feedback">
              {{ $message }}
          </div>
          @enderror
      </div>

      <div>
        <button type="submit" class="flex w-full justify-center rounded-md bg-teal-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-teal-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-teal-600">Register</button>
      </div>
    </form>

    <p class="mt-10 text-center text-sm text-gray-500">
      Already registered? <a href="/login"></a>
      <a href="/login" class="font-semibold leading-6 text-teal-600 hover:text-teal-500">Login lah!</a>
      <br>
      Atau, 
      <a href="{{ route('auth.google') }}" class="font-semibold leading-6 text-teal-600 hover:text-teal-500">login dengan google?</a>
    </p>
  </div>
</div>
@endsection