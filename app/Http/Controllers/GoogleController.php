<?php

namespace App\Http\Controllers;

use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;

class GoogleController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
        try {
            $google_user = Socialite::driver('google')->user();

            $user = User::where('google_id', $google_user->getId())->first();

            if($user){
                Auth::login($user);

                return redirect()->intended('/dashboard');
            } else {
                $newUser = User::create([
                    'name' => $google_user->getName(),
                    'username' => $google_user->getName(),
                    'email' => $google_user->getEmail(),
                    'password' => Hash::make('password'),
                    'google_id' => $google_user->getId()
                ]);

                Auth::login($newUser);

                return redirect()->intended('/dashboard');
            }
        } catch (Exception $e){
            dd('Something went wrong! '. $e->getMessage());
        }
    }
}
