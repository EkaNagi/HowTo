@extends('dashboard.layouts.main')

@section('container')
<div class="text-3xl font-bold text-gray-900 sm:text-4xl text-center pt-24">
    <h1>My Created Guide</h1>
</div>

@if(session()->has('success'))
<div class="p-4 mt-2 mb-4 text-sm text-green-800 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400" role="alert">
  {{ session('success') }}
</div>
@endif

<div class="container px-80 mt-5">
  <a href="/dashboard/posts/create">
  <button type="" class="text-white bg-teal-600 hover:bg-teal-800 focus:ring-4 focus:outline-none focus:ring-teal-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-teal-600 dark:hover:bg-teal-700 dark:focus:ring-teal-800">Create New Guide</button>
  </a>
</div>

<div class="container px-80 mt-5">
  <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-teal-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                <th scope="col" class="px-6 py-3">
                    #
                </th>
                <th scope="col" class="px-6 py-3">
                    Title
                </th>
                <th scope="col" class="px-6 py-3">
                    Category
                </th>
                <th scope="col" class="px-6 py-3">
                </th>
                <th scope="col" class="px-6 py-3">
                </th>
                <th scope="col" class="px-6 py-3">
                </th>
            </tr>
        </thead>
        <tbody>
          @foreach ($posts as $post)
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  {{ $loop->iteration }}
                </th>
                <td class="px-6 py-4">
                  {{ $post->title }}
                </td>
                <td class="px-6 py-4">
                  {{ $post->category->name }}
                </td>
                <td class="px-6 py-4">
                  <a href="/dashboard/posts/{{ $post->slug }}" class="font-medium text-green-600 dark:text-green-500 hover:underline">Show</a>
                </td>
                <td class="px-6 py-4">
                    <a href="/dashboard/posts/{{ $post->slug }}/edit" class="font-medium text-yellow-600 dark:text-yellow-500 hover:underline">Edit</a>
                </td>
                <td class="px-6 py-4">
                  <form action="/dashboard/posts/{{ $post->slug }}" method="post">
                    @method('delete')
                    @csrf
                    <button class="font-medium text-red-600 dark:text-red-500 hover:underline" onclick="return confirm('Are you sure?')">Hapus</button>
                  </form>
              </td>
            </tr>
            @endforeach
        </tbody>
    </table>
  </div>
</div>
@endsection