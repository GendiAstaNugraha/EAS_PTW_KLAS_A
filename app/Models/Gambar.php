<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gambar extends Model
{
	public $timestamps = false;

    protected $table = "barang";

    protected $fillable = ['kode_barang','nama_barang','harga','file','keterangan','stok'];
    
}
