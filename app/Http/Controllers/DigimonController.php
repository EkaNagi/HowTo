<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class DigimonController extends Controller
{
    public function index()
    {
        $response = Http::get('https://digimon-api.vercel.app/api/digimon');
        $data = $response->json();

        return view('digimon', [
            "title" => "Digimon",
            "active" => 'about'
        ],
        compact('data'));
    }
}
