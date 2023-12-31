@extends('layouts.main')

@section('container')
<h1 class="text-3xl font-bold text-gray-900 sm:text-4xl text-center">Digimon Index</h1>
<p class="mt-2 text-lg leading-8 text-gray-600 text-center mb-3">Digimon Digivolve to?</p>
    <div class="container mx-auto grid max-w-2xl grid-cols-1 gap-x-2 border-t border-gray-200 pt-2 sm:flex-wrap lg:mx-0 lg:max-w-none lg:grid-cols-4">
        @foreach($data as $dataDigimon)
        <div class="container px-10 py-5">
            <a href="#" class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
            <img src="{{ $dataDigimon['img'] }}" alt="" class="">
            <h5 class="mb-2 text-center text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{{ $dataDigimon['name'] }}</h5>
            <p class="text-center font-normal text-gray-700 dark:text-gray-400">{{ $dataDigimon['level'] }}</p>
            </a>
        </div>
        @endforeach
@endsection