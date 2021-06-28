<?php

namespace App\Http\Controllers;

use App\Models\Gambar;
use Illuminate\Http\Request;

class DetailController extends Controller
{
    public function index()
    {
        $barang = Gambar::all();
        return view('barang.detail', ['barang'=>$barang]);
    }
}
