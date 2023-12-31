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
            <div>
              <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Tresna Eka Widiana</h3>
              <p>193040071</p>
              <p class="text-sm font-semibold leading-6 text-emerald-800">Team Leader</p>
            </div>
          </div>
        </li>
        <li>
            <div class="flex items-center gap-x-6">
              <div>
                <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Dimas Nanda Herlambang</h3>
                <p>193040040</p>
                <p class="text-sm font-semibold leading-6 text-sky-600">Front-end</p>
              </div>
            </div>
          </li>
          <li>
            <div class="flex items-center gap-x-6">
              <div>
                <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Bimo Resnumurti Zuhri</h3>
                <p>203040026</p>
                <p class="text-sm font-semibold leading-6 text-red-600">Back-end</p>
              </div>
            </div>
          </li>
      </ul>
    </div>
  </div>
@endsection