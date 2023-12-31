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
          <input id="name" name="name" type="name" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 @error('name') is-invalid @enderror" placeholder="Nama" autofocus required value="{{ old('name') }}">
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
            <input id="username" name="username" type="username" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 @error('username') is-invalid @enderror" placeholder="Username" required value="{{ old('username') }}">
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
          <input id="email" name="email" type="email" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 @error('email') is-invalid @enderror" placeholder="name@example.com" required value="{{ old('email') }}">
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
          <input id="password" name="password" type="password" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" placeholder="Password" required>
        </div>
          @error('password')
            <div class="invalid-feedback">
              {{ $message }}
          </div>
          @enderror
      </div>

      <div>
        <button type="submit" class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Register</button>
      </div>
    </form>

    <p class="mt-10 text-center text-sm text-gray-500">
      Already registered? <a href="/login"></a>
      <a href="/login" class="font-semibold leading-6 text-indigo-600 hover:text-indigo-500">Login lah!</a>
      <br>
      Atau, 
      <a href="{{ route('auth.google') }}" class="font-semibold leading-6 text-indigo-600 hover:text-indigo-500">login dengan google?</a>
    </p>
  </div>
</div>

{{-- <div class="row justify-content-center">
    <div class="col-lg-5">
        <main class="form-registration w-100 m-auto">
            <h1 class="h3 mb-3 fw-normal text-center">Registration Form</h1>
            <form action="/register" method="post">
              @csrf
              <div class="form-floating">
                <input type="text" name="name" class="form-control rounded-top @error('name') is-invalid @enderror" id="name" placeholder="Name" required value="{{ old('name') }}">
                <label for="name">Name</label>
                @error('name')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="text" name="username" class="form-control @error('username') is-invalid @enderror" id="username" placeholder="Username" required value="{{ old('username') }}">
                <label for="username">Username</label>
                @error('username')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" required value="{{ old('email') }}">
                <label for="email">E-mail Address</label>
                @error('email')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror
              </div>
              <div class="form-floating">
                <input type="password" name="password" class="form-control rounded-bottom @error('password') is-invalid @enderror" id="password" placeholder="Password" required>
                <label for="password">Password</label>
                @error('password')
                <div class="invalid-feedback">
                  {{ $message }}
                </div>
                @enderror
              </div>
              <button class="btn btn-primary w-100 py-2 mt-4" type="submit">Register</button>
            </form>
            <small class="d-block text-center mt-3">
                Already registered? <a href="/login">Login Now!</a>
            </small>
          </main>
    </div>
</div> --}}
    


@endsection