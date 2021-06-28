<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\barang;
 
class AdminController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $barang = barang::all();
        return view('admin.home', compact('user'), ['barang'=>$barang]);
    }
}