@extends('dashboard.layouts.main')

@section('container')
<div class="text-3xl font-bold text-gray-900 sm:text-4xl text-center pt-24">
    <h1>My Created Guide</h1>
</div>

@if(session()->has('success'))
<div class="p-4 mb-4 text-sm text-green-800 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400" role="alert">
  {{ session('success') }}
</div>
@endif

<div class="container px-80 mt-5">
  <a href="/dashboard/posts/create">
  <button type="" class="text-white bg-indigo-600 hover:bg-indigo-800 focus:ring-4 focus:outline-none focus:ring-indigo-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-indigo-600 dark:hover:bg-indigo-700 dark:focus:ring-indigo-800">Create New Guide</button>
  </a>
</div>

<div class="container px-80 mt-5">
  <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-indigo-50 dark:bg-gray-700 dark:text-gray-400">
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
                  <a href="/dashboard/posts/{{ $post->slug }}" class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Show</a>
                </td>
                <td class="px-6 py-4">
                    <a href="/dashboard/posts/{{ $post->slug }}/edit" class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Edit</a>
                </td>
                <td class="px-6 py-4">
                  <form action="/dashboard/posts/{{ $post->slug }}" method="post">
                    @method('delete')
                    @csrf
                    <button class="font-medium text-blue-600 dark:text-blue-500 hover:underline" onclick="return confirm('Are you sure?')">Hapus</button>
                  </form>
              </td>
            </tr>
            @endforeach
        </tbody>
    </table>
  </div>
</div>




{{-- <div class="table-responsive col-lg-8">
    <a href="/dashboard/posts/create" class="btn btn-primary mb-3">Create new post</a>
    <table class="table table-striped table-sm">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Title</th>
          <th scope="col">Category</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($posts as $post)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $post->title }}</td>
            <td>{{ $post->category->name }}</td>
            <td>
                <a href="/dashboard/posts/{{ $post->slug }}" class="badge bg-info">Lihat</a>
                <a href="/dashboard/posts/{{ $post->slug }}/edit" class="badge bg-warning">Edit</a>
                <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')">Hapus</button>
                </form>
            </td>
        </tr>
        @endforeach
        
      </tbody>
    </table>
  </div> --}}
@endsection