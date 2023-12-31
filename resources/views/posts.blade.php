
@extends('layouts.main')

@section('container')
<div class="bg-white">
    <div class="mx-auto max-w-7xl px-6 lg:px-8">
      <div class="mx-auto max-w-2xl lg:mx-0">
        <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">{{ $title }}</h2>
        <p class="mt-2 text-lg leading-8 text-gray-600">Learn how to play more confidently with community help.</p>
      </div>
      <div class="items-center">
            <form action="/posts">
                @if (request('category'))
                    <input type="hidden" name="category" value="{{ request('category') }}">
                @endif
                @if (request('author'))
                    <input type="hidden" name="author" value="{{ request('author') }}">
                @endif
                <div class="mt-6 flex max-w-md gap-x-4">
                    <input type="text" class="min-w-0 flex-auto rounded-md border-0 bg-white/5 px-3.5 py-2 text-white shadow-sm ring-1 ring-inset ring-white/10 focus:ring-2 focus:ring-inset focus:ring-indigo-500 sm:text-sm sm:leading-6" placeholder="Search.." name="search" value="{{ request('search') }}">
                    <button class="flex-none rounded-md bg-indigo-500 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-indigo-400 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500" type="submit">Search</button>
                </div>
            </form>
        </div>
        <div class="flex">
            {{ $posts->links() }}
        </div>
      <div class="mx-auto mt-10 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 border-t border-gray-200 pt-10 sm:mt-16 sm:pt-16 lg:mx-0 lg:max-w-none lg:grid-cols-3 mb-10">
        @if($posts->count())
        @foreach($posts as $post)
        <article class="flex max-w-xl flex-col items-start justify-between">
          <div class="flex items-center gap-x-4 text-xs">
            <time datetime="2020-03-16" class="text-gray-500">{{ $posts[0]->created_at->diffForHumans() }}</time>
            <a href="/posts?category={{ $post->category->slug }}" class="relative z-10 rounded-full bg-gray-50 px-3 py-1.5 font-medium text-gray-600 hover:bg-gray-100">{{ $post->category->name }}</a>
          </div>
          <div class="group relative">
            <h3 class="mt-3 text-lg font-semibold leading-6 text-gray-900 group-hover:text-gray-600">
              <a href="/posts/{{ $post->slug }}">
                <span class="absolute inset-0"></span>
                {{ $post->title }}
              </a>
            </h3>
                @if($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="mt-2 mb-2 rounded">
                @else
                    <img src="https://source.unsplash.com/500x400?{{ $post->category->name }}" class="mt-2 mb-2 rounded" alt="{{ $post->category->name }}">
                @endif
            <p class="mt-5 line-clamp-3 text-sm leading-6 text-gray-600">{{ $posts[0]->excerpt }}</p>
          </div>
          <div class="relative mt-8 flex items-center gap-x-4">
            <img src="https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" class="h-10 w-10 rounded-full bg-gray-50">
            <div class="text-sm leading-6">
              <p class="font-semibold text-gray-900">
                <a href="#">
                  <span class="absolute inset-0"></span>
                  {{ $post->author->name }}
                </a>
              </p>
            </div>
          </div>
        </article>
        @endforeach
        @else
        <p class="text-center font-extrabold">No Post Found.</p>
        @endif
        <!-- More posts... -->
      </div>
    </div>
  </div>
  

{{-- <h1 class="mb-3 text-center">{{ $title }}</h1>

<div class="">
    <div class="col-md-6">
        <form action="/posts">
            @if (request('category'))
                <input type="hidden" name="category" value="{{ request('category') }}">
            @endif
            @if (request('author'))
                <input type="hidden" name="author" value="{{ request('author') }}">
            @endif
            <div class="input-group mb-3">
                <input type="text" class="" placeholder="Search.." name="search" value="{{ request('search') }}">
                <button class="btn btn-outline-secondary" type="submit">Search</button>
            </div>
        </form>
    </div>
</div>

@if($posts->count())
<div class="card mb-3">
    @if($posts[0]->image)
    <div style="max-height: 400px; overflow:hidden;">
        <img src="{{ asset('storage/' . $posts[0]->image) }}" alt="{{ $posts[0]->category->name }}" class="img-fluid">
    </div>
    @else
    <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" class="card-img-top" alt="{{ $posts[0]->category->name }}">
    @endif
    <div class="card-body text-center">
        <h3 class="card-title"><a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3>
        <small class="text-body-secondary">
        <p>By. <a href="/posts?author={{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}</a> in <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}</p>
        </small>
        <p class="card-text">{{ $posts[0]->excerpt }}</p>
        <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-primary">Read More</a>
    </div>
</div>


<div class="container">
    <div class="row">
        @foreach($posts as $post)
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="position-absolute px-3 py-2" style="background-color: rgba(0,0,0,0.7)"><a href="/posts?category={{ $post->category->slug }}" class="text-white text-decoration-none">{{ $post->category->name }}</a></div>
                @if($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                @else
                <img src="https://source.unsplash.com/500x400?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                @endif
                <div class="card-body">
                  <h5 class="card-title">{{ $post->title }}</h5>
                  <p>By. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in {{ $posts[0]->created_at->diffForHumans() }}</p>
                  <p class="card-text">{{ $post->excerpt }}</p>
                  <a href="/posts/{{ $post->slug }}" class="btn btn-primary">Read More</a>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@else
    <p class="text-center fs-4">No Post Found.</p>
@endif

<div class="d-flex justify-content-end">
    {{ $posts->links() }}
</div> --}}

@endsection

