<?php

namespace App\Http\Controllers;

use App\Models\Gambar;
use Illuminate\Http\Request;

class KeranjangController extends Controller
{
    public function index()
    {
        $barang = Gambar::all();
        return view('keranjang.index', ['barang'=>$barang]);
    }
}
