@extends('layouts.main')

@section('container')
<div class="bg-white py-24 sm:py-32">
    <div class="mx-auto grid max-w-7xl gap-x-8 gap-y-20 px-6 lg:px-8 xl:grid-cols-3">
      <div class="max-w-2xl">
        <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Team BRIGHT</h2>
        <p class="mt-6 text-lg leading-8 text-gray-600">Kelompok 7</p>
      </div>
      <ul role="list" class="grid gap-x-8 gap-y-12 sm:grid-cols-2 sm:gap-y-16 xl:col-span-2">
        <li>
          <div class="flex items-center gap-x-6">
            <img class="h-16 w-16 rounded-full" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
            <div>
              <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Tresna Eka Widiana</h3>
              <p class="text-sm font-semibold leading-6 text-indigo-600">Team Leader</p>
            </div>
          </div>
        </li>
        <li>
            <div class="flex items-center gap-x-6">
              <img class="h-16 w-16 rounded-full" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
              <div>
                <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Dimas Nanda Herlambang</h3>
                <p class="text-sm font-semibold leading-6 text-indigo-600">Front-end</p>
              </div>
            </div>
          </li>
          <li>
            <div class="flex items-center gap-x-6">
              <img class="h-16 w-16 rounded-full" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
              <div>
                <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Bimo Resnumurti Zuhri</h3>
                <p class="text-sm font-semibold leading-6 text-indigo-600">Back-end</p>
              </div>
            </div>
          </li>
  
        <!-- More people... -->
      </ul>
    </div>
  </div>

    {{-- <h1>Halaman About</h1>
    <h3>{{ $name }}</h3>
    <p>{{ $email }}</p>
    <img src="img/{{ $image }}" alt="{{ $name }}" width="200"> --}}
@endsection