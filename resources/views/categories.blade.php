
@extends('layouts.main')

@section('container')
    <h1 class="text-3xl font-bold text-gray-900 sm:text-4xl text-center">Guide Categories</h1>
    <p class="mt-2 text-lg leading-8 text-gray-600 text-center">I wonder, what exactly are you looking for ?</p>
    <hr class="mb-5 mt-2">

    <div class="container columns-3">
        <div class="row">
            @foreach($categories as $category)
            <div class="px-20">
                <a href="/posts?category={{ $category->slug }}">
                <div class="card">
                    <img src="{{ asset('storage/post-images/' . $category->image) }}" class="rounded max-w-96" alt="{{ $category->name }}">
                    <div class="items-center">
                      <h5 class="mt-5 text-3xl font-bold tracking-tight text-gray-900 sm:text-4xlt text-center">{{ $category->name }}</h5>
                    </div>
                </div>
                </a>
            </div>
            @endforeach
        </div>
    </div>

@endsection

