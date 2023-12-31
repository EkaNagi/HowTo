
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
                    <button class="flex-none rounded-md bg-teal-500 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-teal-400 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-bg-teal-500" type="submit">Search</button>
                </div>
            </form>
        </div>
        <div class="inline-block">
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
            <div class="text-sm leading-6">
              <p class="font-semibold text-gray-900">
                <a href="#">
                  <span class="absolute inset-0"></span>
                  Author : {{ $post->author->name }}
                </a>
              </p>
            </div>
          </div>
        </article>
        @endforeach
        @else
        <p class="text-center font-extrabold">No Guide Found.</p>
        @endif
      </div>
    </div>
  </div>
@endsection

