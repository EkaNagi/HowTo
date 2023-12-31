@extends('dashboard.layouts.main')

@section('container')
<div class="text-3xl font-bold text-gray-900 sm:text-4xl text-center pt-60">
    <h1 class="">Welcome back, {{ auth()->user()->name }}!</h1>
    <p class="mt-2 text-lg leading-8 text-gray-600">To make a guide, go to my guide menu.</p>
</div>
@endsection