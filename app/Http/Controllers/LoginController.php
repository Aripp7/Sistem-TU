<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function halamanLogin()
    {
        return view('login.login');
    }


    public function postLogin(Request $request)
    {
        $credentials = $request->validate([
            'username' => ['required'],
            'password' => ['required']
        ]);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            return redirect()->intended('dashboard');
        }
        return back()->with('loginError', 'Login failed');
    }
    public function logout()
    {
        Auth::logout();
        request()->session()->invalidate();
        return redirect('adminLogin');
    }
}
