<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\barang;
use App\Models\Gambar;

class AdminController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $barang = Gambar::all();
        return view('admin.home', compact('user'), ['barang'=>$barang]);
    }
}