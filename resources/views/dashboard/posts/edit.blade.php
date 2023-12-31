@extends('dashboard.layouts.main')

@section('container')

<div class="flex min-h-full flex-col justify-center px-6 lg:px-8 pt-16">
    <div class="sm:mx-auto sm:w-full sm:max-w-sm">
      <h2 class="mt-5 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">Make a Guide</h2>
    </div>
  
    <div class="mt-1 sm:mx-96">
      <form class="space-y-6" action="/dashboard/posts/{{ $post->slug }}" method="post" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div>
          <label for="title" class="block text-sm font-medium leading-6 text-gray-900">Title</label>
          <div class="mt-2">
            <input id="title" name="title" type="text" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-yellow-600 sm:text-sm sm:leading-6 @error('title') is-invalid @enderror" placeholder="Title" required autofocus value="{{ old('title', $post->title) }}">
          </div>
            @error('title')
              <div class="">
                {{ $message }}
              </div>
            @enderror
          </div>
  
          <div>
            <label for="slug" class="block text-sm font-medium leading-6 text-gray-900">Slug</label>
            <div class="mt-2">
              <input id="slug" name="slug" type="text" required class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-yellow-600 sm:text-sm sm:leading-6 @error('slug') is-invalid @enderror" placeholder="Slug Otomatis" required value="{{ old('slug', $post->slug) }}">
            </div>
              @error('slug')
                <div class="">
                  {{ $message }}
                </div>
              @enderror
            </div>
        <div>
          <div class="flex items-center justify-between">
            <label for="category" class="block text-sm font-medium leading-6 text-gray-900">Category</label>
          </div>
          <div class="mt-2">
            <select class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-yellow-600 sm:text-sm sm:leading-6" name="category_id">
                @foreach($categories as $category)
                @if(old('category_id', $post->category_id) == $category->id)
                <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
                @else
                <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endif
                @endforeach
            </select>
          </div>
            @error('category')
              <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="image" class="block text-sm font-medium leading-6 text-gray-900">Picture</label>
            <input type="hidden" name="oldImage" value="{{ $post->image }}">
            @if($post->image)
            <img src="{{ asset('storage/' . $post->image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
            @else
            <img class="img-preview img-fluid mb-3 col-sm-5">
            @endif
            <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewImage()">
            @error('image')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="body" class="block text-sm font-medium leading-6 text-gray-900">Body</label>
            @error('body')
                <p class="text-danger">{{ $message }}</p>
            @enderror
            <input id="body" type="hidden" name="body" value="{{ old('body', $post->body) }}">
            <trix-editor input="body"></trix-editor>
        </div>
  
        <div>
          <button type="submit" class="flex w-full justify-center rounded-md bg-yellow-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-yellow-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-yellow-600 mb-5">Update Guide</button>
        </div>
      </form>
    </div>
  </div>

<script>
    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');

    title.addEventListener('change', function(){
        fetch('/dashboard/posts/checkSlug?title=' + title.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
    });

    document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    })

    function previewImage(){
        const image = document.querySelector('#image');
        const imgPreview = document.querySelector('.img-preview');

        imgPreview.style.display = 'block';

        const oFReader = new FileReader();
        oFReader.readAsDataURL(image.files[0]);

        oFReader.onload = function(oFREvent){
            imgPreview.src = oFREvent.target.result;
        }
    }
</script>
@endsection