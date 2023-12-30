@extends('layouts.main')

@section('container')
    <h1>Halaman Digimon</h1>

    <div class="container">
        <table>
            <thead>
                </tr>
                    <th>Gambar</th>
                    <th>Nama</th>
                    <th>Level</th>
                <tr>
            </thead>
            <tbody>
                @foreach($data as $dataDigimon)
                <tr>
                    <td><img src="{{ $dataDigimon['img'] }}" alt=""></td>
                    <td>{{ $dataDigimon['name'] }}</td>
                    <td>{{ $dataDigimon['level'] }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection