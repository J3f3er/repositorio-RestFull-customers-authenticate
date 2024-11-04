<?php

namespace App\Http\Controllers;

use App\Models\Tokens;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
        
        $random = rand(200, 500);
        $token = sha1($request->email . now() . $random);
        $expiresAt = Carbon::now()->addMinutes(60);
        Tokens::create([
            'token' => $token,
            'email' => $request->email,
            'expires_at' => $expiresAt,
        ]);

        return response()->json([
            'success' => true,
            'token' => $token,
            'expires_at' => $expiresAt,
        ]);
    }
}
