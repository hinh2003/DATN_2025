<?php

namespace App\Http\Controllers\Clients;

use App\Http\Controllers\Controller;
use App\Services\UploadImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function index(){

        $user = Auth::user();
        $movies = $user->movies;

        return view('Client.Profile.index',compact('movies'));
    }
    public function uploadAvatar(Request $request)
    {
        $request->validate([
            'avatar' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $path = (new UploadImage)->upload($request->file('avatar'), 'avatar');

        // Lưu path vào user
        $user = auth()->user();
        $user->avatar = $path;
        $user->save();

        return response()->json([
            'success' => true,
            'avatar' => asset($path),
        ]);
    }

}
