@extends('dashboard.layouts.main')

@section('container')

<div class="text-3xl font-bold text-gray-900 sm:text-4xl text-center pt-24">
  <h1>Category List</h1>
</div>

@if(session()->has('success'))
<div class="p-4 mt-2 mb-4 text-sm text-green-800 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400" role="alert">
  {{ session('success') }}
</div>
@endif

<div class="container px-80 mt-5">
<a href="#">
<button type="" class="text-white bg-indigo-600 hover:bg-indigo-800 focus:ring-4 focus:outline-none focus:ring-indigo-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-indigo-600 dark:hover:bg-indigo-700 dark:focus:ring-indigo-800">Create New Guide</button>
</a>
</div>

<div class="container px-80 mt-5 mb-3">
<div class="relative overflow-x-auto shadow-md sm:rounded-lg">
  <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
      <thead class="text-xs text-gray-700 uppercase bg-indigo-50 dark:bg-gray-700 dark:text-gray-400">
          <tr>
              <th scope="col" class="px-6 py-3">
                  #
              </th>
              <th scope="col" class="px-6 py-3">
                  Category
              </th>
              <th scope="col" class="px-6 py-3">
              </th>
              <th scope="col" class="px-6 py-3">
          </tr>
      </thead>
      <tbody>
        @foreach ($categories as $category)
          <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
              <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                {{ $loop->iteration }}
              </th>
              <td class="px-6 py-4">
                {{ $category->name }}
              </td>
              <td class="px-6 py-4">
                  <a href="/dashboard/categories/{{ $category->slug }}/edit" class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Edit</a>
              </td>
              <td class="px-6 py-4">
                <form action="/dashboard/categories/{{ $category->slug }}" method="post">
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
@endsection