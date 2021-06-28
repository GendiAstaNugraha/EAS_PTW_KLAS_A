<?php
 
namespace App\Http\Controllers;

use App\Models\barang;
use App\Models\Gambar;
use Illuminate\Support\Facades\Auth;
 
class UserController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $barang = Gambar::all();
        return view('user.home', compact('user'), ['barang'=>$barang]);
    }
}